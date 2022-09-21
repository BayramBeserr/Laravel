<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel3.aspx.cs" Inherits="Laravel.laravel3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Uygulama Yapısı</title>
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
					
					<h1>Laravel Uygulama Yapısı</h1>
				Kurmuş olduğumuz sistemde geliştirme yapabilmemiz için bir IDE (Integrated development environment)’ye ihtiyacımız bulunmaktadır.

IDE olarak:

PhpStorm ( Önerilir )
Eclipse
Netbeans
yada istediğiniz bir IDE kullanabilirsiniz.
					
					<h1>Laravel Anadizin Yapısı</h1>
					app: Bu klasör içerisinde uygulamanın asıl kodları bulunacaktır.

bootstrap: Uygulamanın autoload ve cache (önbellek) kısımlarını barındırmaktadır.

config: Uygulamanın ayar dosyaları bu klasörde bulunmaktadır.

database: Veritabanı operasyonları için kullanılan “Seeds” ve “Migrations” bu klasörde bulunmaktadır.

public: Bu klasör uygulamanın “document root” kısmıdır. Laravel’in çalışmasını başlatır ayrıca “Assets” (Javascrip, CSS, Resimler vb.) kısmını barındırır.

resources: Bu klasörde herhangi bir işlem yapılmamış (Sıkıştırma, Birleştirme, Gizleme vs) dosyalar, view (görünüm) dosyaları ve dil dosyaları bulunmaktadır.

storage: Bu klasör uygulamanın depolama alanıdır. İçerisinde, dosya yüklemelerini, önbellekleme (cache) dosyalarını ve uygulamanın log dosyalarını barındırır.

tests: Bu klasör test dosyalarını barındırır.

vendor: Bu klasörde uygulamanın “Composer Dependencies” (paket bağımlılıkları) bulunmaktadır.
					
					<h1>Laravel App Klasörü Yapısı</h1>
					Uygulamamızın ana klasörü burasıdır diyebiliriz. Ayrıca içerisinde birçok ek klasör bulunmaktadır.

Console: Tüm “artisan” komutları bu klasörde bulunmaktadır.

Http: “Controllers”, “Middleware”, “Request” bu klasörde bulunmaktadır.

Exceptions: Özel “Exception Handlers” bu klasörde bulunmaktadır.

Providers:  “Providers” (Servis Sağlayıcılar) bu klasörde bulunmaktadır

Composer-Setup.exe açıyoruz.
Composer genelde PHP’nin bulunduğu yeri görüyor, görmezse yerini seçiyoruz.
Next next diyerek tamamlıyoruz. 
					
	
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
