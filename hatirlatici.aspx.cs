using System;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MemeKanseriDeğerlendirme
{
    public partial class Hatirlatici : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void MamografiKaydet(object sender, EventArgs e)
        {
            TextBox adSoyadTextBox = adSoyad;
            TextBox emailTextBox = email;
            TextBox mamografiTarihiTextBox = mamografiTarihi;

            if (adSoyadTextBox != null && emailTextBox != null && mamografiTarihiTextBox != null)
            {
                string adSoyad = adSoyadTextBox.Text;
                string email = emailTextBox.Text;
                if (DateTime.TryParse(mamografiTarihiTextBox.Text, out DateTime mamografiTarihi))
                {
                    string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MemeKanseriDB"].ConnectionString;
                    try
                    {
                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            connection.Open();

                            // Veritabanında aynı email adresi ile kayıt var mı kontrol edelim
                            string checkQuery = "SELECT COUNT(*) FROM mamografi WHERE Email = @Email";
                            using (SqlCommand checkCommand = new SqlCommand(checkQuery, connection))
                            {
                                checkCommand.Parameters.AddWithValue("@Email", email);
                                int existingRecords = (int)checkCommand.ExecuteScalar();

                                if (existingRecords > 0)
                                {
                                    ShowMessage("Bu email adresi ile zaten kayıt mevcut.");
                                }
                            }

                            // Yeni kayıt ekleme
                            string insertQuery = "INSERT INTO mamografi (AdSoyad, Email, Tarih) VALUES (@AdSoyad, @Email, @Tarih)";
                            using (SqlCommand command = new SqlCommand(insertQuery, connection))
                            {
                                command.Parameters.AddWithValue("@AdSoyad", adSoyad);
                                command.Parameters.AddWithValue("@Email", email);
                                command.Parameters.AddWithValue("@Tarih", mamografiTarihi);

                                int rowsAffected = command.ExecuteNonQuery();
                                if (rowsAffected > 0)
                                {
                                    // E-posta gönderme işlemi
                                    SendMamografiEmail(adSoyad, email, mamografiTarihi);

                                    ShowMessage("Kayıt işlemi başarıyla tamamlandı. Sağlıklı günler dileriz!");
                                    adSoyadTextBox.Text = "";
                                    emailTextBox.Text = "";
                                    mamografiTarihiTextBox.Text = "";
                                }
                                else
                                {
                                    ShowMessage("Kayıt işlemi sırasında bir hata oluştu.");
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        ShowMessage("Veritabanı işlemleri sırasında hata oluştu: " + ex.Message);
                    }
                }
                else
                {
                    ShowMessage("Geçerli bir tarih formatı giriniz.");
                }
            }
            else
            {
                ShowMessage("Lütfen gerekli alanları doldurunuz.");
            }
        }

        protected void MuayeneKaydet(object sender, EventArgs e)
        {
            TextBox adSoyadTextBox = TextBox1;
            TextBox emailTextBox = TextBox2;

            if (adSoyadTextBox != null && emailTextBox != null)
            {
                string adSoyad = adSoyadTextBox.Text;
                string email = emailTextBox.Text;

                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MemeKanseriDB"].ConnectionString;

                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        // Veritabanında aynı email adresi ile kayıt var mı kontrol edelim
                        string checkQuery = "SELECT COUNT(*) FROM hatirlatici WHERE Email = @Email";
                        using (SqlCommand checkCommand = new SqlCommand(checkQuery, connection))
                        {
                            checkCommand.Parameters.AddWithValue("@Email", email);
                            int existingRecords = (int)checkCommand.ExecuteScalar();

                            if (existingRecords > 0)
                            {
                                ShowMessage("Bu email adresi ile zaten kayıt mevcut.");
                            }
                        }

                        // Yeni kayıt ekleme
                        string insertQuery = "INSERT INTO hatirlatici (AdSoyad, Email) VALUES (@AdSoyad, @Email)";
                        using (SqlCommand command = new SqlCommand(insertQuery, connection))
                        {
                            command.Parameters.AddWithValue("@AdSoyad", adSoyad);
                            command.Parameters.AddWithValue("@Email", email);

                            int rowsAffected = command.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                SendHatirlaticiEmail(adSoyad, email);

                                ShowMessage("Kayıt işlemi başarıyla tamamlandı. Sağlıklı günler dileriz!");
                                adSoyadTextBox.Text = "";
                                emailTextBox.Text = "";
                            }
                            else
                            {
                                ShowMessage("Kayıt işlemi sırasında bir hata oluştu.");
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    ShowMessage("Veritabanı işlemleri sırasında hata oluştu: " + ex.Message);
                }
            }
            else
            {
                ShowMessage("Lütfen gerekli alanları doldurunuz.");
            }
        }

        // Mamografi için e-posta gönderme metodu
        protected void SendMamografiEmail(string adSoyad, string toEmail, DateTime mamografiTarihi)
        {
            string subject = "Mamografi Hatırlatma";
            string body = $@"Sayın {adSoyad},<br/><br/>
                     Verdiğiniz bilgilere göre {mamografiTarihi.ToShortDateString()} tarihinde mamografi için hastaneye başvurmanız gerekmektedir. 
                     Muayenelerinizi aksatmayınız. Erken teşhis hayat kurtarır.<br/><br/>Sağlıklı günler dileriz.
                     <br/><img src='cid:teshisImage' />";

            AlternateView imageView = AlternateView.CreateAlternateViewFromString(body, null, "text/html");

            LinkedResource imageResource = new LinkedResource(Server.MapPath("images/mamografi1.jpg"), "image/jpeg");
            imageResource.ContentId = "teshisImage";
            imageView.LinkedResources.Add(imageResource);

            SendEmail(toEmail, subject, imageView);
        }


        // Hatırlatıcı için e-posta gönderme metodu
        protected void SendHatirlaticiEmail(string adSoyad, string toEmail)
        {
            string subject = "KKMM Hatırlatma";
            string body = $@"Sayın {adSoyad},<br/><br/>
                     Verdiğiniz bilgilere göre aylık hatırlatıcınız ayarlanmıştır. 
                     her ay tarafınıza kendi kendine meme muayenesi yapmanız için hatırlatma maili iletilecektir. Kendi kendinize meme muayenesi yapmanız önemlidir .Erken teşkih hayat kurtarır.<br/><br/>Sağlıklı günler dileriz.
                     <br/><img src='cid:teshisImage' />";

            AlternateView imageView = AlternateView.CreateAlternateViewFromString(body, null, "text/html");

            LinkedResource imageResource = new LinkedResource(Server.MapPath("images/kendi_muayene.jpg"), "image/jpeg");
            imageResource.ContentId = "teshisImage";
            imageView.LinkedResources.Add(imageResource);

            SendEmail(toEmail, subject, imageView);
        }


        // Genel e-posta gönderme metodu
        protected void SendEmail(string toEmail, string subject, AlternateView alternateView)
        {
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("kkmmmemekanseri@gmail.com");
                mailMessage.To.Add(toEmail);
                mailMessage.Subject = subject;
                mailMessage.AlternateViews.Add(alternateView);

                SmtpClient smtpClient = new SmtpClient();
                smtpClient.Credentials = new NetworkCredential("kkmmmemekanseri@gmail.com", "vhdpncbhngyffeuk");
                smtpClient.Port = 587;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.EnableSsl = true;

                smtpClient.Send(mailMessage);

                ShowMessage("E-posta başarıyla gönderildi.");
            }
            catch (SmtpException smtpEx)
            {
                ShowMessage("SMTP hata: " + smtpEx.Message);
            }
            catch (Exception ex)
            {
                ShowMessage("E-posta gönderme işleminde hata oluştu: " + ex.Message);
            }
        }

        private void ShowMessage(string message)
        {
            string script = $"<script type=\"text/javascript\">alert('{message}');</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", script);
        }
    }
}
