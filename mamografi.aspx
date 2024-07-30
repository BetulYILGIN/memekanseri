<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mamografi.aspx.cs" Inherits="MemeKanseriDeğerlendirme.Mamografi" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Mamografi Nasıl Çekilir?</title>
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
            height: 358px;
            width: 529px;
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
            <h1>Mamografi Nedir?</h1>
        </header>
        <div class="container">
            <h2>Mamografi Nedir ve Nasıl Çekilir?</h2>
            <div class="img-container">
                <img src="images/mamografi1.jpg" alt="Mamografi Çekimi" />
            </div>
            <p>Mamografi, meme kanserinin erken teşhisinde kullanılan, düşük dozda X ışını ile meme dokusunun görüntülenmesini sağlayan bir yöntemdir. Memedeki kireçlenme, kitle, anormal doku büyümesi gibi muayene ile saptanamayacak kadar küçük anormalliklerin tespit edilmesi için kullanılır.</p>
            
            <h2>Video: Mamografi Nasıl Çekilir?</h2>
            <div class="video-container">
                <video controls>
                    <source src="videos/mamografi.mp4" type="video/mp4" />
                    Tarayıcınız bu videoyu desteklemiyor.
                </video>
            </div>

            <h2>Mamografi Ne Kadar Sık Çekilmeli?</h2>
            <p>Mamografi çekim sıklığı, yaş, aile öyküsü ve meme kanseri riski gibi faktörlere göre değişir. Genel olarak:</p>
            <ul>
                <li>40-49 yaş arası kadınlar: Her 1-2 yılda bir</li>
                <li>50-74 yaş arası kadınlar: Her yıl</li>
                <li>75 yaş ve üzeri kadınlar: Her 1-2 yılda bir veya doktor kontrolünde</li>
            </ul>
            
            <h2>Mamografi ile İlgili Dikkat Edilmesi Gerekenler</h2>
            <ul>
                <li>Mamografi, meme kanserini erken teşhis etmede oldukça etkili bir yöntemdir.</li>
                <li>Herhangi bir meme kanseri belirtisi olmasa bile, tarama programlarına katılmak önemlidir.</li>
                <li>Mamografi çekimi sırasında biraz rahatsızlık hissedebilirsiniz, ancak bu kısa sürelidir.</li>
                <li>Mamografi sonucunuz anormal ise, doktorunuz ek testler isteyebilir.</li>
                <li>Herhangi bir sorunuz veya endişeniz varsa doktorunuza danışmaktan çekinmeyin.</li>
            </ul>
            <div class="img-container">
                <img src="images/mamografi3.jpg" alt="Mamografi Çekimi" />
            </div>

            <h2>Mamografi sırasında alınan radyasyonun riski var mıdır?</h2>
            <p>Meme kanserinin sıklığı ve erken tanının önemi düşünüldüğünde radyasyonun riski önemsiz kalmaktadır. Alınan doz çok düşük olup kanıtlanmış herhangi bir zararı yoktur. Bu çekim sırasında alınan ortalama doz, 0.7mSv olup bu doz normal günlük hayatta 3 ay içerisinde çevreden de alınmaktadır.</p>

            <h2>Mamografi ile bütün meme kanserleri saptanabilir mi?</h2>
            <p>Dijital mamografi meme kanserinin teşhisinde en başarılı yöntemdir. Ancak kitlelerin bir kısmı mamografi ile görülememektedir. Özellikle meme dokusu yoğun olanlarda küçük kitleleri görmek zordur. Bu tip meme yapısı olan kadınlarda mamografi ile birlikte ultrasonografi, gerekirse MR yapılması önerilmektedir.</p>
            <div class="img-container">
                <img src="images/mamografi5.jpg" alt="Mamografi Çekimi" style="position: static" />
            </div>
            <h2>Mamografide yaş sınırı var mıdır?</h2>
            <p>Mamografide yaş sınırı vardır. 40 yaş altı kadınlarda ciddi şüphe yoksa mamografi tavsiye edilmez. Meme dokusu temel olarak yağ dokusu ve süt bezi yapısından oluşur. Mamografide yağ dokusu siyaha yakın renkte iken, süt bezi yapısı ise beyaza yakın tondadır. Meme kanserleri süt bezi içerisinden çıktığından mamografide beyaz tonda görülür. 40 yaş altı kadınlarda memede süt bezi yapısı hakim olduğundan beyaz bir meme dokusu içerisinde yine beyaz görülen meme kanseri dokusu ayırt edilemez. 40 yaş sonrası ise meme dokusunda süt bezi yapısı gerileyerek yağ dokusuna dönüşür. Bu durumda siyah bir meme yapısı içerisinde beyaz şekilde görülen bir meme kanseri dokusu rahatlıkla fark edilebilir.</p>

            <h2>Hangi durumlarda mamografi çekimlerine daha erken yaşta başlanır?</h2>
            <p>Meme kanseri ile ilgili aile öyküsü bulunan kadınlar, özellikle ailede erken yaşta meme kanseri geçiren yakınları varsa takiplere erken yaşta başlamalıdır. Bu tip durumlarda mamografi çekimlerine 35-40 yaş aralığında başlanabileceği belirtilmektedir. Ayrıca muayene sırasında kanser şüphesi olan 40 yaş altı kadınlarda meme ultrasonu negatif çıkarsa ilk tercih meme MR çekimidir. Farklı sebeplerle meme MR çekimi yaptırılamayan durumlarda mamografi çekilebilir.</p>

            <h2>Dijital mamografi nedir?</h2>
            <p>Meme görüntülemesinde yeni bir teknoloji olan dijital mamografi, artık meme hastalıklarının teşhisinde ve meme kanseri taramasında temel tanı yöntemi olmuştur. Klasik mamografiden farklı olarak, elektronik algılayıcılar kullanarak dijital ortamda görüntüler elde edilir. Daha sonra bu görüntüler yüksek çözünürlüklü özel monitörlere sahip CAD programlı iş istasyonunda değerlendirilmektedir. Bu iş istasyonunda, büyütme, ölçüm ve kullanılan X-ışının dozuna bağlı olmadan kontrast ayarı gibi bir çok işlem yapılmaktadır.</p>
            <div class="img-container">
                <img src="images/mamografi2.jpg" alt="Mamografi Çekimi" style="position: static" />
            </div>

            <h2>Mamografi ağrılı bir görüntüleme yöntemi midir?</h2>
            <p>Mamografi çekimi sırasında memenin baskılanması nedeniyle memelerde ağrı ya da acı hissedilebilir. Ancak bu ağrı veya acı kısa süre sonra kendiliğinden geçmektedir. Meme hassasiyeti daha fazla olan kadınların mamografi çekimlerini adet dönemi sonrasına bırakmaları yaşanabilecek ağrıyı daha az hissetmeleri için önerilmektedir.</p>

            <h2>Tarama Mamografisi neden önemlidir?</h2>
            <p>Meme kanseri kadınlarda ölüm oranı en yüksek kanser türüdür. Kadınların 70 yaşına kadar %13’ünde meme kanseri gelişme riski vardır. Kanserin kitle haline gelmesi birkaç yıl veya daha uzun sürebilir. Tümör erken dönemde genellikle ağrı veya herhangibir şikayete neden olmadığından sinsi bir şekilde büyür. Eğer bu aşamada yakalanırsa tedavi şansı çok yüksektir. Tarama mamografisinin amacı, kitlenin hastanın veya muayene eden doktorun eline gelecek boyuta ulaşmadan yakalanmasıdır. Tarama mamografisinin düzenli olarak yapıldığı ülkelerde meme kanserine bağlı ölümlerde %30 oranında azalma görülmektedir.</p>

            <h2>Mamografi çekimi öncesi nasıl bir hazırlık gerekir?</h2>
            <p>Herhangi bir ön hazırlık gerekmez. Mamografi çekimi için ideal zaman adet dönemi bittikten sonraki ilk hafta olmakla birlikte diğer günlerde de çekilebilir. İncelemenin yapılacağı gün deodorant veya pudra kullanılmamalıdır. Hasta gelirken, varsa eski mamografilerini mutlaka yanında getirmelidir. Eski ve yeni filmler arasında meme dokusundaki küçük bir değişiklik kanser belirtisi olabilir. Eski filmlerde de aynı şekilde var olduğu düşünülen bir lezyonun iyi huylu olduğu söylenebilir. Böylelikle hasta gereksiz bir biyopsiden kurtulmuş olur.</p>
            <div class="img-container">
                <img src="images/mamografi4.jpg" alt="Mamografi Çekimi" style="position: static" />
            </div>
            <h2>Mamografi hangi hastalıkların teşhisinde kullanılır?</h2>
            <p>Mamografi, meme kanserinin erken teşhisinde en sık kullanılan görüntüleme yöntemidir. Meme kanseri kadınlar arasında en yaygın kanser türlerinden birisidir. Bu nedenle herhangi bir şikâyeti olmayan kadınların da 40 yaşından sonra tarama amaçlı mamografi çektirmesi önemlidir.</p>
            <ul>
                <li>Memede ele gelen sertlik</li>
                <li>Memede kitle</li>
                <li>Meme başında akıntı</li>
                <li>Meme ağrısı</li>
                <li>Meme derisinin kalınlaşması</li>
                <li>Meme boyutunda veya şeklinde değişiklik gibi şikayetlerin nedeninin araştırılması için mamografi ve meme ultrasonu yapılmalıdır.</li>
            </ul>
        </div>
    </form>
    <footer>
        <div class="container">
            <p>&copy; 2024 Meme Kanseri Risk Değerlendirme ve Bilgilendirme Sistemi</p>
        </div>
    </footer>
</body>
</html>
