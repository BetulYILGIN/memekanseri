  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anket.aspx.cs" Inherits="MemeKanseriDeğerlendirme.Anket" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Kansere Tarama Anketi</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        .anket-tablo {
            background-color: #FADADD;
            padding: 20px;
            margin: 31px auto auto auto;
            width: 50%;
            border-radius: 10px;
            text-align: center;
        }

        .anket-tablo h2 {
            color: #C71585;
            text-align: center;
        }

        .anket-tablo label {
            display: block;
            text-align: left;
            margin-top: 10px;
        }

        .anket-tablo .form-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .anket-tablo .form-row div {
            width: 49%;
        }

        .anket-tablo input[type="text"],
        .anket-tablo input[type="number"],
        .anket-tablo select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
        }

        .anket-tablo .button {
            background-color: #FF69B4;
            color: white;
            padding: 15px 20px;
            margin: 20px 0;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 18px;
            display: block;
            margin: 20px auto;
        }

        .anket-tablo .button:hover {
            background-color: #d78b9a;
        }

        .anket-tablo .radiobutton-group,
        .anket-tablo .checkbox-group {
            text-align: left;
            margin-top: 10px;
        }

        .anket-tablo .checkbox-group {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .anket-tablo .checkbox-group div {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            width: 126%;
            margin-right: 10%;
            margin-left: 16px;
        }

        .anket-tablo .checkbox-group div:nth-child(2n) {
            margin-right: 0;
        }

        .anket-tablo .checkbox-group label {
            margin-left: 5px;
            width: 244px;
        }

        .anket-tablo .radiobutton-group div {
            display: flex;
            align-items: center;
            margin-bottom: 5px;
        }

        .anket-tablo .radiobutton-group label {
            margin-left: 5px;
        }

        .anket-tablo .image-checkbox-group {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 20px;
        }

        .anket-tablo .image-checkbox-group div {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 20px;
            width: 33%;
            height: 197px;
        }

        .anket-tablo .image-checkbox-group img {
            max-width: 150px;
            margin-bottom: 10px;
            height: 192px;
            width: 202px;
        }

        .anket-tablo .image-checkbox-group label {
            margin-top: 5px;
            width: 274px;
            margin-left: 112px;
        }
        footer {
            background-color: #d78b9a;
            color: #ffffff;
            padding: 20px 0;
            text-align: center;

        }
        header {
            background-color: #e47c93;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
        }
    </style>
    <script>
        function toggleEmzirmeSuresi() {
            var cb30Once = document.getElementById('<%= chk30Once.ClientID %>');
            var cb30Sonra = document.getElementById('<%= chk30Sonra.ClientID %>');
            var cbHic = document.getElementById('<%= chkHic.ClientID %>');

            var emzirmeCheckboxes = document.querySelectorAll('.emzirme-suresi input[type="checkbox"]');

            if (cb30Once.checked || cb30Sonra.checked) {
                emzirmeCheckboxes.forEach(function (checkbox) {
                    checkbox.disabled = false;
                });
            } else if (cbHic.checked) {
                emzirmeCheckboxes.forEach(function (checkbox) {
                    checkbox.disabled = true;
                    checkbox.checked = false;
                });
            } else {
                emzirmeCheckboxes.forEach(function (checkbox) {
                    checkbox.disabled = false;
                });
            }
        }

        function toggleExclusiveCheckbox(checkbox) {
            var checkboxes = document.querySelectorAll('.checkbox-group input[type="checkbox"]');
            checkboxes.forEach(function (cb) {
                if (cb !== checkbox) {
                    cb.checked = false;
                }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Kanser Risk Değerlendirme Testi</h1>
        </header>
        <div class="anket-tablo" style="font-family: 'times New Roman', Times, serif">

            <h2 style="color: #F28EB1; text-decoration: blink;">Kanser Tarama Anketi</h2>

            <div class="form-row">
                <div>
                    <label for="txtYas">Yaş:</label>
                    <asp:TextBox ID="txtYas" runat="server" TextMode="Number" min="1" max="120"></asp:TextBox>
                </div>
                <div>
                    <label for="txtMuayeneSikligi">Kendi Meme Muayenesi Sıklığı (aylık):</label>
                    <asp:TextBox ID="txtMuayeneSikligi" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <div>
                    <label for="txtBoy">Boy (cm):</label>
                    <asp:TextBox ID="txtBoy" runat="server" TextMode="Number" min="50" max="250"></asp:TextBox>
                </div>
                <div>
                    <label for="txtKilo">Kilo (kg):</label>
                    <asp:TextBox ID="txtKilo" runat="server" TextMode="Number" min="10" max="300"></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <div>
                    <label for="chkGenetikGecmis">Genetik Geçmiş:</label>
                    <div class="checkbox-group">
                        <div>
                            <asp:CheckBox ID="chkTeyze" runat="server" />
                            <label for="chkTeyze">Teyze</label>
                            <asp:CheckBox ID="chkBabaanne" runat="server" />
                            <label for="chkBabaanne">Babaanne</label></div>
                        <div>
                            <asp:CheckBox ID="chkHala" runat="server" />
                            <label for="chkHala">Hala</label>
                            <asp:CheckBox ID="chkAnneanne" runat="server" />
                            <label for="chkAnneanne">Anneanne</label></div>
                        <div>
                            <asp:CheckBox ID="chkAnne" runat="server" />
                            <label for="chkAnne">Anne</label>
                            <asp:CheckBox ID="chkkızkardes" runat="server" />
                            <label for="chkAnneanne">Kız Kardeş</label></div>
                    </div>
                </div>
                <div>
                    <label for="rblCinsiyet">Cinsiyet:</label>
                    <div class="radiobutton-group">
                        <div>
                            <asp:RadioButton ID="rbtnKadin" runat="server" GroupName="Cinsiyet" Text="Kadın" />
                        </div>
                        <div>
                            <asp:RadioButton ID="rbtnErkek" runat="server" GroupName="Cinsiyet" Text="Erkek" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div>
                    <label for="ddlErkenAdet">Erken Adet Görme (12 yaşından önce):</label>
                    <asp:DropDownList ID="ddlErkenAdet" runat="server">
                        <asp:ListItem Text="Evet" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Hayır" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <label for="ddlGecMenopoz">Geç Menopoza Girme (55 yaş sonrası):</label>
                    <asp:DropDownList ID="ddlGecMenopoz" runat="server">
                        <asp:ListItem Text="Evet" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Hayır" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-row">

                <div>
                    <label for="ddlalkol">Alkol Kullanıyorum/Kullandım:</label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="Evet" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Hayır" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <label for="ddlErtelenenDogum">Sigara Kullanıyorum/Kullandım:</label>
                    <asp:DropDownList ID="ddlErtelenenDogum" runat="server">
                        <asp:ListItem Text="Evet" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Hayır" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <label for="ddlHRT">Hormonal Replasman Tedavisi Alıyorum/Aldım:</label>
                    <asp:DropDownList ID="ddlHRT" runat="server">
                        <asp:ListItem Text="Evet" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Hayır" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <label for="ddlEmzirmeSuresi">Emzirme Süresi:</label>
                    <asp:DropDownList ID="ddlEmzirmeSuresi" runat="server">
                        <asp:ListItem Text="0-6 Ay" Value="0-6"></asp:ListItem>
                        <asp:ListItem Text="7-12 Ay" Value="7-12"></asp:ListItem>
                        <asp:ListItem Text="13-24 Ay" Value="13-24"></asp:ListItem>
                        <asp:ListItem Text="2 Yıldan Fazla" Value="2Yil"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-row">
                <div>
                    <label for="chkDogumDurumu">Doğum Durumu:</label>
                    <div class="checkbox-group">
                        <div>
                            <asp:CheckBox ID="chk30Once" runat="server" OnClick="toggleExclusiveCheckbox(this); toggleEmzirmeSuresi();" />
                            <label for="chk30Once">30 Yaşından Önce</label>
                        </div>
                        <div>
                            <asp:CheckBox ID="chk30Sonra" runat="server" OnClick="toggleExclusiveCheckbox(this); toggleEmzirmeSuresi();" />
                            <label for="chk30Sonra">30 Yaşından Sonra</label>
                        </div>
                        <div>
                            <asp:CheckBox ID="chkHic" runat="server" OnClick="toggleExclusiveCheckbox(this); toggleEmzirmeSuresi();" />
                            <label for="chkHic">Doğum Yapmadım</label>
                        </div>
                    </div>
                </div>

            </div>

          <div class="image-checkbox-group">
                <div>
                    <img src="images/memede_bolgesel_sislikler.jpg" alt="Memede Bölgesel Şişlikler"/>
                    <div>
                        <asp:CheckBox ID="chkMemedeBolgeselSislikler" runat="server" BorderStyle="None" TextAlign="Left" />
                        <label for="chkMemedeBolgeselSislikler">Memede Bölgesel Şişlikler</label>
                        <asp:HiddenField ID="hfMemedeBolgeselSislikler" runat="server" Value="8" />
                    </div>
                </div>
                <div>
                    <img src="images/koltukaltinda_sislik .jpg" alt="Koltuk Altında Şişlik"/>
                    <div>
                        <asp:CheckBox ID="chkKoltukaltindaSislik" runat="server" />
                        <label for="chkKoltukaltindaSislik">&nbsp; Koltuk Altında Şişlik</label>
                        <asp:HiddenField ID="hfKoltukaltindaSislik" runat="server" Value="2" />
                    </div>
                </div>
                <div>
                    <img src="images/meme_basi_cekilmesi.jpg" alt="Meme Başı Çekilmesi"/>
                    <div>
                        <asp:CheckBox ID="chkMemeBasiCekilmesi" runat="server" />
                        <label for="chkMemeBasiCekilmesi">Meme Başı Çekilmesi</label>
                        <asp:HiddenField ID="hfMemeBasiCekilmesi" runat="server" Value="6" />
                    </div>
                </div>
                <div>
                    <img src="images/ciltte_cukurlasma.jpg" alt="Ciltte Çukurlaşma"/>
                    <div>
                        <asp:CheckBox ID="chkCiltteCukurlasma" runat="server" />
                        <label for="chkCiltteCukurlasma">&nbsp;&nbsp;&nbsp; Ciltte Çukurlaşma</label>
                        <asp:HiddenField ID="hfCiltteCukurlasma" runat="server" Value="5" />
                    </div>
                </div>
                <div>
                    <img src="images/ciltte_tahris.jpg" alt="Ciltte Tahriş"/>
                    <div>
                        <asp:CheckBox ID="chkCiltteTahris" runat="server" />
                        <label for="chkCiltteTahris">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ciltte Tahriş</label>
                        <asp:HiddenField ID="hfCiltteTahris" runat="server" Value="4" />
                    </div>
                </div>
                <div>
                    <img src="images/meme_basinda_akinti.jpg" alt="Meme Başında Akıntı"/>
                    <div>
                        <asp:CheckBox ID="chkMemeBasindaAkinti" runat="server" />
                        <label for="chkMemeBasindaAkinti">Meme Başında Akıntı</label>
                        <asp:HiddenField ID="hfMemeBasindaAkinti" runat="server" Value="3" />
                    </div>
                </div>
                <div>
                    <img src="images/memede_agri.jpg" alt="Memede Ağrı"/>
                    <div>
                        <asp:CheckBox ID="chkMemedeAgri" runat="server" />
                        <label for="chkMemedeAgri">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Memede Ağrı</label>
                        <asp:HiddenField ID="hfMemedeAgri" runat="server" Value="7" />
                    </div>
                </div>

            </div>
            <asp:Button ID="btnGonder" runat="server" CssClass="button" Text="Gönder" OnClick="btnGonder_Click" Height="63px" Width="135px" BorderColor="#e47c93" BackColor="#FD95B9" />
            <asp:Label ID="lblSonuc" runat="server" Text="" ForeColor="Red" />
        </div>
    </form>
     <footer>
        <div class="container">
            <p>&copy; 2024 Meme Kanseri Risk Değerlendirme ve Bilgilendirme Sistemi</p>
        </div>
    </footer>
</body>
</html>
