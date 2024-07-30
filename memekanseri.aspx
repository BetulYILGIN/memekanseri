<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="memekanseri.aspx.cs" Inherits="MemeKanseriDeğerlendirme.MemeKanseri" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Meme Kanseri Nedir?</title>
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

        h2 {
            color: #e47c93;
        }

        p, ul {
            font-size: 18px;
            line-height: 1.6;
            color: #333;
        }

        ul {
            padding-left: 20px;
        }

        ul li {
            margin-bottom: 10px;
        }

        .img-container,
        .video-container {
            text-align: center;
            margin: 20px 0;
        }

        .img-container img,
        .video-container video {
            max-width: 100%;
            border-radius: 10px;
            height: 312px;
            width: 454px;
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
            <h1>Meme Kanseri Nedir?</h1>
        </header>
        <div class="container">
            <h2>Meme Kanseri Nedir?</h2>
            <p>Meme kanseri; göğüs hücrelerinin mutasyona uğrayıp değişmesi ve kontrolden çıkıp tümör adı verilen kanserli doku kitleleri oluşturması anlamına gelir. Erkeklerde de görülebilen meme kanseri dünya üzerinde yaygın olarak 50 yaş üstü kadınlarda rastlanan bir kanser türüdür. Ancak daha genç yaştaki kadınları da etkilediği görülmüştür.</p>
            <p>Birçok kanser türünde olduğu gibi meme kanserinde de metastaz ihtimali vardır. Metastaz, kanserli hücrelerin vücudun diğer bölgeleri yayılması olarak ifade edilir.</p>
            <p>Meme kanserinin yaygın olarak görülen ilk ve en erken belirtileri göğüs bölgesinde hissedilen yeni bir şişlik, yumru ve kalınlaşma durumudur. Meme kanseri; mamografi yöntemiyle erken teşhis edilip tedavi edilirse kişinin hayatına sağlıklı bir şekilde devam etme şansını yükseltir.</p>
            <div class="img-container">
                <img src="images/meme_kanseri.jpg" alt="Meme Kanseri" />
            </div>
            <h2>Meme Kanseri Türleri Nelerdir?</h2>
            <p>Meme kanseri türleri biyopsi ile alınan doku üzerinde yapılan patoloji incelemesi sonucunda belirlenerek noninvaziv ya da başka bir isimle in situ (yayılma göstermeyen) ve invaziv (yayılma gösteren) olarak ikiye ayrılır.</p>
            <h3>Invaziv (Yayılım Gösteren) Karsinoma</h3>
            <p>Kanser başlangıç yeri olan hücrenin üst katmanından daha ileri yayılma göstermesi ile invaziv kanser türü oluşur. Meme kanserlerinin çoğu, invaziv karsinomdur ve yayılma gösterir. Yayılma özelliği gösteren kanserler arasında, meme kanallarını oluşturan hücrelerden ortaya çıkan duktal karsinom en sık rastlanan meme kanseri türüdür.</p>
            <h3>Noninvaziv Karsinoma (Yayılma göstermeyen)</h3>
            <p>Meme kanseri çeşitlerinden biri olan noninvaziv karsinoma, kanseli hücre dokularının metastaz olarak adlandırılan yayılma göstermeyen meme kanseri türüdür.</p>

            <h2>Meme Kanseri Neden Olur?</h2>
            <p>Meme kanseri göğüsteki hücrelerin anormal ve kontrolsüz bir şekilde büyüyüp tümörlü dokulara dönüşmesiyle meydana gelir. Çoğunlukla meme kanseri nedenleri arasında hareketsiz yaşam, yaş faktörü, genetik, sigara-alkol tüketimi, obezite ve radyasyon maruziyeti gibi durumlar yer alır.</p>
            <p>Özellikle ailesinde meme kanseri geçirmiş olan bir kişi, yaş olarak 40’ın da üstündeyse düzenli olarak kontrole gitmelidir.</p>
            <p>Genel olarak meme kanserinin nedenleri şunları içerir:</p>
            <ul>
                <li>Hareketsiz yaşam</li>
                <li>Yaş faktörü</li>
                <li>Cinsiyet</li>
                <li>Genetik</li>
                <li>Sigara ve alkol tüketimi</li>
                <li>Obezite</li>
                <li>Radyasyona ve kimyasala maruz kalma</li>
                <li>Hormon değişim terapisi</li>
            </ul>
            <div class="img-container">
                <img src="images/memekanseri.jpg" alt="Meme Kanseri" />
            </div>
            <h2>Meme Kanseri Belirtileri Nelerdir?</h2>
            <p>Memede şişlik veya kitle, en yaygın görülen meme kanseri belirtisidir. Memede veya koltuk altında yeni ortaya çıkan şişlik, dokunulduğunda hissedilen meme boyutunda değişiklik, meme ucunda veya meme derisinde şişlik ve kızarıklık, meme ucunun içe doğru dönmesi ve meme ucunda akıntı da meme kanserinin belirtileridir.</p>
            <p>Memede şişlik ve yeni bir kitleyle ortaya çıkan meme kanseri belirtileri şöyledir:</p>
            <ul>
                <li>Meme ya da koltuk altında yeni ortaya çıkan şişlik, kitle</li>
                <li>Meme veya meme ucunda ağrı</li>
                <li>Dokunulduğunda bir veya her iki memenin boyutunda değişiklik</li>
                <li>Meme ucunun içe dönmesi, kanlı veya berrak akıntı gelmesi</li>
                <li>Göğüs ve meme ucunda tahriş, kızarıklık, döküntü ve kaşıntı</li>
                <li>Göğüs damarlarında belirginleşme ve büyüme</li>
            </ul>
            <div class="img-container">
                <img src="images/memekanseri3.jpg" alt="Meme Kanseri" />
            </div>
            <h2>Meme Kanserinin Erken Belirtileri Nelerdir?</h2>
            <p>Meme kanserinde gözlemlenen en erken belirtiler memede ortaya çıkan şişlik veya diğer adıyla kitledir. Bu şişlik memenin tamamını veya bir bölümünü etkileyebilir. Aynı zamanda şişlik koltuk altında da olabilir. Ayrıca meme ucunda ağrı, meme bölgesinde kızarıklık, kaşıntı ve soyulmalar da meme kanserinin erken belirtileri arasındadır.</p>

            <h2>Meme Kanseri Evreleri Nelerdir?</h2>
            <ul>
                <li>Evre 0:  DCIS</li>
                <li>Evre I: Tümör 2 cm’den küçük ve henüz lenf nodlarına sıçramamıştır.</li>
                <li>Evre II: Tümör 2- 5 cm arasında bir büyüklükte olup çevredeki lenf nodlarına sıçramış ya da sıçramamamış olabilir.</li>
                <li>Evre III: Çevredeki lenf bezlerine daha fazla yayılmış demektir.</li>
                <li>Evre IV: Diğer organlara (kemik, karaciğer, beyin, akciğer) veya kemiğe, uzaktaki lenf nodlarına metastaz yapmış demektir.</li>
            </ul>
            <div class="img-container">
                <img src="images/meme_kanseri.jpg" alt="Meme Kanseri" />
            </div>

            <h2>Meme Kanseri Nasıl Teşhis Edilir?</h2>
            <p>Erken teşhis edilen meme kanserinde hem tedavi çok kolay hem de başarı şansı çok yüksektir. Örneğin Evre 0’da yakalanan meme kanserinde başarı şansı ve hastalığın bir daha tekrar etmeme olasılığı %96’dır. Evre I’de başarı oranı % 93, Evre II’de % 85 şeklindedir. Ne kadar erken evrede teşhis edilirse başarı şansı da o kadar yükselmektedir.</p>
            <p>Genç yaşlarda görülen fibroadenom veya kist denilen kanser olmayan kitleler ve orta yaşlarda görülen fibrokistik kitlelerdir. Memedeki kitlenin ağrılı ya da ağrısız olması bunun kanser anlamına gelmez.</p>
            <p>Meme kanseri teşhisinde kullanılan yöntemler:</p>
            <ul>
                <li>Mamografi ve tomosentez mamografi</li>
                <li>Ultrasonografi (USG)</li>
                <li>Emar -MR (Manyetik Rezonans Görüntüleme)</li>
                <li>PET – CT PET- CT</li>
                <li>Meme Sintigrafisi</li>
            </ul>
            <div class="img-container">
                <img src="images/memekanseri2.jpg" alt="Meme Kanseri" />
            </div>
            <h2>Meme Kanseri Tedavisi Nasıl Yapılır?</h2>
            <p>Meme kanseri tedavisi hastanın hangi evrede olduğuna bağlı olarak değişir. Evre 0’da ameliyat sonrası kemoterapi tedavisine gerek duyulmayabilir. Çoğu zaman radyoterapi de tedaviye eklenir. Evre I ve II ‘de kitle küçük olduğu için önce ameliyat ardından kemoterapi uygulanıp uygulanmayacağına karar verilir. Evre III’te önce kemoterapi tedavisi uygulanır ardından hasta ameliyata alınır. Evre IV’te ise eğer kanser vücudun çok fazla bölgesine yayılmadıysa cerrahi düşünülebilir.</p>
            <p>Meme kanserinin tedavi yöntemleri şunları içerir:</p>
            <ul>
                <li>Meme kanseri ameliyatı</li>
                <li>Kemoterapi</li>
                <li>Radyoterapi</li>
                <li>Hormon tedavisi</li>
                <li>İmmünoterapi</li>
                <li>Hedefe yönelik ilaç tedavisi</li>
            </ul>

            <h2>Meme Kanseri Risk Faktörleri Nelerdir?</h2>
            <ul>
                <li>Yaş faktörü</li>
                <li>Genetik</li>
                <li>Göğüsleri yoğun olan kişiler</li>
                <li>Daha önce radyasyon tedavisi geçirenler</li>
                <li>Üreme geçmişi</li>
            </ul>
            <div class="img-container">
                <img src="images/memekanseri1.jpg" alt="Meme Kanseri" />
            </div>
            <h2>Meme Kanseri Hakkında Sık Sorulan Sorular</h2>
            <h3>Meme kanseri teşhisi için dikkat edilen belirtiler nelerdir?</h3>
            <p>Meme kanseri teşhisinde değerlendirilen, memede ele gelen kitle, memede şişme ve kalınlaşma, meme ucunun kabuk bağlaması, meme derisinde kızarıklık, göğüslerin üzerindeki damarlarda büyüme, koltuk altında şişlik ve meme ucunun içe dönmesi en yaygın meme kanseri belirtileridir.</p>
            <h3>Erken meme kanseri nasıl bir duygu?</h3>
            <p>Erken evre meme kanseri bazen hiç belirti göstermese de genelde bazı işaretlere sahiptir. Bu işaretler arasında en yaygın olanı memede veya koltuk altında meydana gelen şişliktir. Bu şişliğe meme ucunda ağrı, memede hassasiyet, kızarıklık ve kaşıntı da eşlik edebilir. Bu süreçte göğsünüzde anormal değişimler fark ediyorsanız doktora başvurun.</p>
            <h3>Memede görülen her kitle kanser midir?</h3>
            <p>Meme kanseri teşhisinde görülen her 10 kitlenin 8’i iyi huylu olabilir. Genç yaşlarda görülen kist denilen kanser olmayan kitleler, fibroadenom ve orta yaşlarda görülebilecek olan fibrokistik kitleler olabilir. Memedeki her kitlenin ağrılı ya da ağrısız olması kanser olduğu anlamına gelmemektedir.</p>
            <h3>Fiziksel aktivite meme kanseri riskini azaltabilir mi?</h3>
            <p>Egzersiz bağışıklık sistemini güçlendirir ve kilonuzu kontrol altında tutmanıza yardımcı olur. Haftada üç saat veya günde yaklaşık 30 dakika kadar az bir egzersiz yapan bir kadında meme kanseri riskini azalabilir.</p>
            <h3>Meme muayenesi için en doğru zaman nedir?</h3>
            <p>Meme muayenesini adet döneminin bitiminden 4-5 gün sonra yapmak gerekir.</p>
            <h3>Meme kanseri bulaşıcı mıdır?</h3>
            <p>Hiçbir kanser bulaşıcı değildir. Bir ailenin birçok bireyinde kanser görülmesi bu yanlış düşünceye sebep oluyor olabilir. Kişi kanser hastalığını başka bir kimseye bulaştıramaz. Ancak rahim ağzı (serviks), karaciğer kanseri gibi bazı kanserlerin nedenleri arasında virüsler vardır.</p>
            <h3>Erkekler meme kanseri olur mu?</h3>
            <p>Erkeklerin meme dokularında da kanserli hücreler oluşabilir ama bu durum nadiren gerçekleşir. Nadiren gerçekleşen bu durum daha çok yaşlı erkekleri etkiler.</p>
        </div>
    </form>
    <footer>
        <div class="container">
            <p>&copy; 2024 Meme Kanseri Risk Değerlendirme ve Bilgilendirme Sistemi</p>
        </div>
    </footer>
</body>
</html>
