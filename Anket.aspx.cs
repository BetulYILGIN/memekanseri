using System;
using System.Linq;
using System.Web.UI.WebControls;
using System.Web;

namespace MemeKanseriDeğerlendirme
{
    public partial class Anket : System.Web.UI.Page
    {
        protected void btnGonder_Click(object sender, EventArgs e)
        {
            lblSonuc.Text = "";

            if (string.IsNullOrWhiteSpace(txtYas.Text) ||
                string.IsNullOrWhiteSpace(txtBoy.Text) ||
                string.IsNullOrWhiteSpace(txtKilo.Text))
            {
                ShowMessageBox("Lütfen tüm alanları doldurun.");
                return;
            }

            if (!int.TryParse(txtYas.Text, out int yas) ||
                !int.TryParse(txtBoy.Text, out int boy) ||
                !int.TryParse(txtKilo.Text, out int kilo))
            {
                ShowMessageBox("Yaş, boy ve kilo alanlarına geçerli sayısal değerler girin.");
                return;
            }

            string cinsiyet = rbtnKadin.Checked ? "Kadın" : rbtnErkek.Checked ? "Erkek" : "";
            string[] genetikGecmisArray = new[] { chkTeyze, chkHala, chkAnne, chkAnneanne, chkBabaanne }
                .Where(c => c.Checked)
                .Select(c => c.Text)
                .ToArray();
            string genetikGecmis = string.Join(", ", genetikGecmisArray);
            string muayeneSikligi = txtMuayeneSikligi.Text;

            // Değerlendirme puanı hesaplama
            int puan = 0;

            if (yas > 50) puan += 10;
            if (cinsiyet == "Kadın") puan += 10;
            if (genetikGecmis.Contains("Anne") || genetikGecmis.Contains("Teyze") || genetikGecmis.Contains("Hala")) puan += 30;
            if (genetikGecmis.Contains("Anneanne") || genetikGecmis.Contains("Babaanne")) puan += 20;


            var checkboxAğırlıkları = new (CheckBox, HiddenField, int)[]
            {
                (chkMemedeBolgeselSislikler, hfMemedeBolgeselSislikler, 10),
                (chkKoltukaltindaSislik, hfKoltukaltindaSislik, 20),
                (chkMemeBasiCekilmesi, hfMemeBasiCekilmesi, 20),
                (chkCiltteCukurlasma, hfCiltteCukurlasma, 20),
                (chkCiltteTahris, hfCiltteTahris, 10),
                (chkMemeBasindaAkinti, hfMemeBasindaAkinti, 25),
                (chkMemedeAgri, hfMemedeAgri, 10)
            };

            foreach (var (checkbox, hiddenField, defaultWeight) in checkboxAğırlıkları)
            {
                if (checkbox.Checked)
                {
                    puan += int.TryParse(hiddenField.Value, out int weight) ? weight : defaultWeight;
                }
            }

            //Diğer değişkenlere ağırlık verme
            if (ddlErkenAdet.SelectedValue == "1") puan += 10;
            if (ddlGecMenopoz.SelectedValue == "1") puan += 10;
            if (ddlHRT.SelectedValue == "1") puan += 5;
            if (ddlErtelenenDogum.SelectedValue == "1") puan += 15;
            if (chk30Once.Checked) puan += 0;
            if (chk30Sonra.Checked) puan += 5;
            if (chkHic.Checked) puan += 10;

            if (ddlEmzirmeSuresi.SelectedValue == "0-6 Ay") puan += 10;
            if (ddlEmzirmeSuresi.SelectedValue == "6-12 Ay") puan += 5;
            if (ddlEmzirmeSuresi.SelectedValue == "12-18 Ay") puan += 0;
            if (ddlEmzirmeSuresi.SelectedValue == "2 Yıl ve Üzeri") puan -= 5;

            // Sonuç mesajı belirleme
            string sonucMesaji;
            if (puan >= 80)
            {
                sonucMesaji = "Yüksek risk altında olabilirsiniz. Lütfen en kısa sürede bir sağlık kuruluşuna başvurun. Erken teşhis hayat kurtarır.";
            }
            else if (puan >= 50)
            {
                sonucMesaji = "Orta risk altında olabilirsiniz. Düzenli olarak kendi meme muayenelerinizi yapın ve doktorunuza danışın.";
            }
            else
            {
                sonucMesaji = "Düşük risk. Yine de düzenli kontrollerinizi aksatmayın. Erken teşhis hayat kurtarır.";
            }

            // JavaScript ile mesajı gösterme
            ShowMessageBox($"Risk Puanınız: {puan}/100. {sonucMesaji}");

            // Formu sıfırla
            ResetForm();
        }

        private void ResetForm()
        {
            txtYas.Text = string.Empty;
            txtBoy.Text = string.Empty;
            txtKilo.Text = string.Empty;
            txtMuayeneSikligi.Text = string.Empty;

            rbtnKadin.Checked = false;
            rbtnErkek.Checked = false;

            chkTeyze.Checked = false;
            chkHala.Checked = false;
            chkAnne.Checked = false;
            chkAnneanne.Checked = false;
            chkBabaanne.Checked = false;

            ddlErkenAdet.SelectedIndex = 0;
            ddlGecMenopoz.SelectedIndex = 0;
            ddlHRT.SelectedIndex = 0;
            ddlErtelenenDogum.SelectedIndex = 0;

            chk30Once.Checked = false;
            chk30Sonra.Checked = false;
            chkHic.Checked = false;

            chkMemedeBolgeselSislikler.Checked = false;
            chkKoltukaltindaSislik.Checked = false;
            chkMemeBasiCekilmesi.Checked = false;
            chkCiltteCukurlasma.Checked = false;
            chkCiltteTahris.Checked = false;
            chkMemeBasindaAkinti.Checked = false;
            chkMemedeAgri.Checked = false;
        }

        private void ShowMessageBox(string message)
        {
            string script = $@"<script type='text/javascript'>alert('{HttpUtility.HtmlEncode(message)}');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", script);
        }
    }
}
