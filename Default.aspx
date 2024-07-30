<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MemeKanseriDeğerlendirme.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Anasayfa</title>  

    <style>
        body {
            font-family: Arial, sans-serif;

        }
        header {
            background-color: #e09da3;
            padding: 20px 0;
            text-align: center;

        }
        .hero-section {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #e09da3;
            color: white; 

        }
        .hero-section h1 {
            font-size: 4rem;
            margin-bottom: 15px;

        }
        .hero-section p {
            font-size: 1.5rem;
            margin-bottom: 15px;

        }
        .hero-section img {
            width: 126px;
            height: 128px;
            margin-bottom: 20px;

        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;

        }
        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;

        }
        .col-lg-4,
        .col-md-6 {
            flex: 0 0 25%;
            padding: 10px;

        }
        .card {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;

        }
        .card:hover {
            transform: scale(1.02);

        }
        .card-img-top {
            width: 100%;
            height: 200px;
            object-fit: cover;

        }
        .card-body {
            padding: 15px;

        }
        .card-title {
            font-weight: bold;
            margin-bottom: 10px;

        }
        .btn-primary {
            background-color: #e09da3;
            color: #fff;
            border-color: #e09da3;
            padding: 8px 20px;
            border-radius: 5px;
            transition: background-color 0.2s;

        }
        .btn-primary:hover {
            background-color: #d78b9a;

        }
        main {
            padding: 40px 0;
        }

        footer {
            background-color: #d78b9a;
            color: #ffffff;
            padding: 20px 0;
            text-align: center;

        }
        .auto-style1 {
            width: 474px;
            height: 596px;
        }
    </style>

</head>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Meme Kanseri Risk Değerlendirme ve Bilgilendirme Sistemi</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <header>
        <div class="hero-section">
            &nbsp;<h1 style="font-family: 'Times New Roman', Times, serif; font-style: normal; font-weight: normal; font-size: xx-large; color: #FFFFFF">
                <img alt="" class="auto-style1" src="images/AA.png" /></h1>
            <h1 style="font-family: 'Times New Roman', Times, serif; font-style: normal; font-weight: normal; font-size: x-large; color: #FFFFFF">Meme Kanseri Risk Değerlendirme ve Bilgilendirme Sistemi</h1>
            <p style="font-family: 'Times New Roman', Times, serif; font-style: normal; font-weight: normal; font-size: xx-large; color: #FFFFFF">&nbsp;</p>
        </div>
    </header>

    <main>
        <section class="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <img src="images/test.jpg" alt="Risk Değerlendirme Testi" style="height: 397px; width: 432px"/>
                            <div class="card-body" style="font-family: 'Times New Roman', Times, serif; font-size: large;">
                                <h5 class="card-title" style="font-size: x-large">Risk Değerlendirme Testi</h5>
                                <p class="card-text">Kendi meme kanseri riskinizi öğrenmek için testi doldurun.</p>
                                <a href="Anket.aspx" class="btn btn-primary" style="text-decoration: none; font-size: large;">Testi Başlat</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <img src="images/kendi_muayene.jpg" alt="Hatırlatıcılar" style="height: 405px; width: 444px"/>
                            <div class="card-body">
                                <h5 class="card-title" style="font-size: x-large; font-family: 'Times New Roman', Times, serif">Hatırlatıcılar</h5>
                                <p class="card-text" style="font-family: 'times New Roman', Times, serif; font-size: large">Kontrollerinizi ve testlerinizi düzenli yapmanız için hatırlatıcılar oluşturun.</p>
                                <a href="hatirlatici.aspx" class="btn btn-primary" style="text-decoration: none; font-family: 'Times New Roman', Times, serif; font-size: large;">Hatırlatıcı Oluştur</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <img src="images/meme.jpg" alt="Meme Kanseri Nedir?" style="height: 399px; width: 446px"/>
                            <div class="card-body" style="font-family: 'times New Roman', Times, serif; font-size: large">
                                <h5 class="card-title" style="font-size: x-large">Meme Kanseri Nedir?</h5>
                                <p class="card-text">Meme kanseri hakkında detaylı bilgi edinin.</p>
                                <a href="memekanseri.aspx" class="btn btn-primary" style="text-decoration: none">Daha Fazla Bilgi</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <img src="images/mamografi.jpg" alt="Mamografi Nedir?" style="height: 390px; width: 447px"/>
                            <div class="card-body" style="font-family: 'times New Roman', Times, serif; font-size: large">
                                <h5 class="card-title" style="font-size: x-large">Mamografi Nedir?</h5>
                                <p class="card-text">Mamografi hakkında bilgi edinin ve nasıl çekildiğini öğrenin.</p>
                                <a href="mamografi.aspx" class="btn btn-primary" style="text-decoration: none">Daha Fazla Bilgi</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2024 Meme Kanseri Risk Değerlendirme ve Bilgilendirme Sistemi</p>
        </div>
    </footer>
</body>
</html>
