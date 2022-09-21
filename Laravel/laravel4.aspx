<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel4.aspx.cs" Inherits="Laravel.laravel4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Konfigürasyonu</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="anasayfa" >
	
<div class="logo">
	
	<img src="image/laravel-logo.png" alt="logo"/>
	
</div>
<div class="menu">

	<ul>
		<li><a href="index.aspx">Anasayfa</a></li>
		<li><a href="laravel.aspx">Laravel</a></li>
		<li><a href="laravelforge.aspx">Laravel Forge</a></li>
		<li><a href="iletisim.aspx">İletişim</a></li>
	</ul>
</div>
		<div class="konumenu">
			
			<div class="konular">
				
				<div class="laravelnedirr"><p class="laravelnedirr">
					
					<h1>Laravel Konfigürasyonu</h1>
				
				
					<h1>Kurulum Sonrası Kontroller</h1>
					Öncelikle, Laravel kurulumundan sonra yapmamız gereken birkaç kontrol ve işlem bulunmaktadır.

Ana dizinde bulunan “storage” ve “bootstrap/cache” klasörlerinin yazma izni kontrolü yapılmadır, yazma izni yoksa yazma izni verilmelidir.
“php artisan key:generate” komutu ile uygulama anahtarı oluşturulmalıdır. Bu anahtar session ve diğer şifrelenmiş verilerin güvenliğinde kullanılacaktır.
Ana dizinde “.env” dosyası olup olmadığı kontrolü yapılmadır. Bu dosya composer ile kurulumda yada “php artisan key:generate” komutuyla otomatik olarak oluşmalıdır. Eğer yoksa “.env.example” dosyasının adı “.env” yapılıp, “php artisan key:generate” komutu tekrar çalıştırılmalıdır.
Önemli: “.env” dosyası geliştirme ortamımız ile ilgili değişkenleri içermektedir. Bu dosyanın içeriğine ayrıntılı olarak değineceğiz.
					
					<h1>Konfigürasyon Dosyaları  ve Geliştirme Ortamı Konfigürasyonu</h1>
					Bu kontrolleri yaptıktan sonra projemizin ana dizini altında “config” dizini altındaki birçok yapılandırma dosyasına göz atabiliriz.
					app.php: Bu dosyada uygulamamız ile ilgili ayarlar bulunmaktadır. (Uygulama adı, adresi, debug durumu, dil ve timezone gibi ayarlar bulunmaktadır.)

database.php: Veritabanı ile ilgili ayarlar bulunmaktadır. (Varsayılan veritabanı bağlantı türü, desteklenen veritabanı bağlantı bilgileri vb. ayarlar bulunmaktadır. )

Bu yazıda yüksek öneme sahip 2 dosyadan bahsettik, isterseniz diğer dosyalara da göz atabilirsiniz.<br>
					
					database.php içeriği:<br><br>
					
					<img src="image/laravel-database-configi.png" alt="."/> <br><br>
					
					Bu kısımda örnek olarak ele aldığımız database.php içerisinde<br><br>
					
					'host' =&gt; env('DB_HOST', '127.0.0.1'), <br><br>
					
					“env” fonksiyonunun kullanıldığını görmekteyiz.<br><br>
					
					<h1>Peki, bu “env” fonksiyonu ne işe yarar?</h1>
					Dersin başında “.env” olarak isimlendirdiğimiz dosyadaki parametreleri, config dosyalarımızda kullandığımız env() fonksiyonu ile okuyabiliriz.<br><br>
					
					env('.env dosyasındaki parametre adı', 'varsayılan değer')<br><br>
					
					
					şeklinde kullanılabilir.<br><br>
					
					<img src="image/laravel-environment-file.png" alt=","> <br><br>
					
					.env dosyası geliştirme ortamımızın konfigürasyon bilgilerini tek bir yerden yönetmemizi sağlar.

Birden çok geliştirme ortamı olması durumunda, .env.testing, .env.production, .env.local gibi ayarlamalar yapılabilir.

Tanımlamış olduğumuz konfigürasyon değişkenlerine uygulama içerisinde aşağıdaki şekilde ulaşabiliriz.<br><br>
					
	
$value = config('app.timezone');<br><br>
					
$value = config('config dosyası adı.parametre anahtarı');<br><br>
					
					<h1>Bakım Modu (maintenance mode)</h1>
					Son olarak Laravel de bakım modundan (maintenance mode)  da bahsedelim.

Bakım modu aktif edildiğinde, sitenize gelen ziyaretçiler bakım modu ekranını görürler. Bu süreçte sitenizde herhangi bir işlem yapılamaz. Siz de gerekli gerekli güncelleme veya geliştirmeleri sitenize uygulayabilirsiniz.<br><br>
					
					Bakım modu;<br><br>

php artisan down<br><br>

komutuyla aktif edilir.<br><br>

php artisan up<br><br>

komutuyla inaktif edilir.<br><br>

Ayrıntılı mesaj vermek ve belirli sürelerde ziyaretçinin otomatik deneme yapmasını isterseniz,<br><br>

php artisan down --message="Veritabanı güncelleniyor." --retry=60<br><br>

gibi bir komut kullanabilirsiniz.<br><br>



				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
