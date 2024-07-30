<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hatirlatici.aspx.cs" Inherits="MemeKanseriDeğerlendirme.Hatirlatici" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hatırlatıcı</title>
    <style>
        body {
            background-color: #fce4ec;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
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

        .container {
            margin: 50px auto;
            padding: 20px;
            max-width: 800px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .container h2 {
            color: #e47c93;
        }

        p, label {
            font-size: 18px;
            line-height: 1.6;
            color: #333;
        }

        input[type="text"], input[type="email"], input[type="date"], button {
            display: block;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
            width: 100%;
        }
        .pink-button {
            background-color: #e47c93;
            color: white;
            border: none;
            cursor: pointer;
            padding: 15px 150px; 
            font-size: 18px; 
            margin-top: 20px;
            margin-bottom: 20px;
            margin-left: auto;
            margin-right: auto;
            display: block;
            border-radius: 5px;

        }
        .pink-button:hover {
            background-color: #e6708a;

        }


        .video-container {
            text-align: center;
            margin-bottom: 50px;
        }

        .video-container h2 {
            color: #e47c93;
        }

        .video-container video {
            width: 100%;
            max-width: 800px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
                
        footer {
            background-color: #d78b9a;
            color: #ffffff;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1>Mamografi Hatırlatıcı</h1>
        </header>
        <div class="container">
            <div class="video-container"> 
                <h2>Kendi Kendine Meme Muayenesi (KKMM)</h2>
                <video controls>
                    <source src="videos/muayene.mp4" type="video/mp4" />
                    Tarayıcınız bu videoyu desteklemiyor.
                </video>
            </div>
        </div>
        <div class="container">
            <h2>Kendi Kendine Meme Muayenesi Hatırlatıcısı</h2>
            <label for="TextBox1">Ad Soyad:</label>
            <asp:TextBox ID="TextBox1" runat="server" Width="770px" />

            <label for="TextBox2">E-posta:</label>
            <asp:TextBox ID="TextBox2" runat="server" Width="770px" />
            <asp:Button ID="btnMuayeneKaydet" runat="server" Text="Kaydet ve Hatırlatıcı Oluştur" OnClick="MuayeneKaydet" CssClass="pink-button" />
        </div>
        <div class="container">
            <h2>Kişisel Bilgiler</h2>
            <label for="adSoyad">Ad Soyad:</label>
            <asp:TextBox ID="adSoyad" runat="server" Width="770px" />

            <label for="email">E-posta:</label>
            <asp:TextBox ID="email" runat="server" Width="770px" />

            <h2>Mamografi Hatırlatıcısı</h2>
            <label for="mamografiTarihi">Mamografi Tarihi:</label>
            <asp:TextBox ID="mamografiTarihi" runat="server" TextMode="Date" Width="770px" />

            <asp:Button ID="btnMamografiKaydet" runat="server" Text="Kaydet ve Hatırlatıcı Oluştur" OnClick="MamografiKaydet" CssClass="pink-button" />
        </div>
    </form>
    <footer>
        <div class="container">
            <p>&copy; 2024 Meme Kanseri Risk Değerlendirme ve Bilgilendirme Sistemi</p>
        </div>
    </footer>

    <script>
        // JavaScript ile TextBox'ların içeriğini temizleme
        function clearTextBoxes() {
            document.getElementById('<%= TextBox1.ClientID %>').value = '';
            document.getElementById('<%= TextBox2.ClientID %>').value = '';
            document.getElementById('<%= adSoyad.ClientID %>').value = '';
            document.getElementById('<%= email.ClientID %>').value = '';
            document.getElementById('<%= mamografiTarihi.ClientID %>').value = '';
        }

        // Sayfa yüklendiğinde TextBox'ları temizle
        window.onload = function () {
            clearTextBoxes();
        };
    </script>
</body>
</html>
