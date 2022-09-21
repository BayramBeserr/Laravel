<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel2.aspx.cs" Inherits="Laravel.laravel2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Kurulumu</title>
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
					
					<h1>Laravel için sunucu gereklilikleri nelerdir?</h1>
				Şuan ki son Laravel versiyonu 5.4’tür. Anlatım 5.4 üzerinden devam edecektir.

Laravel’in dökümantasyonunda belirtiği üzere;

PHP >= 5.6.4
OpenSSL PHP Extension
PDO PHP Extension
Mbstring PHP Extension
Tokenizer PHP Extension
XML PHP Extension
Belirli bir PHP versiyonuna ve belirli modüllere ihtiyacımız bulunmaktadır.

Peki, biz bu gereklilikleri nasıl sağlayacağız?

Bunun için “Laravel Homestead” kullanabilirsiniz. Bu hepsi bir arada (all in one) bir çözümdür.
PHP’yi kendiniz kurabilirsiniz.
Wamp/Xammp gibi bir çözüm kullanabilirsiniz. (Bu eğitimde bu yöntemi kullanacağız.
					
					<h1>Aşama 1 – Wamp kurulumu</h1>
					!! Dikkat etmeniz gereken PHP sürümünün en az 5.6.4 olması gerektiğidir.
					
					<h1>Aşama 2 – Composer Kurulumu</h1>
					Wamp kurulumunu tamamladıktan sonra daha önce bahsetmiş olduğumuz “Composer” (Dependency Manager/Bağımlılık Yöneticisi) yüklememiz gerekiyor. Composer’ı https://getcomposer.org/download/ adresinden indirebilirsiniz.

Composer-Setup.exe açıyoruz.
Composer genelde PHP’nin bulunduğu yeri görüyor, görmezse yerini seçiyoruz.
Next next diyerek tamamlıyoruz. 
					
					<h1>Aşama 3 – PHP Extension Ayarları</h1>
Composer kurulumundan sonra Wamp üzerinde gerekli “PHP Extensions” ayarlarını yapıyoruz
					OpenSSL PHP Extension, PDO PHP Extension, Mbstring PHP Extension resimdeki şekilde aktif olmalı, Tokenizer PHP Extension ve XML PHP Extension ise Wampta aktif olarak gelmektedir.
					
					<h1>Aşama 4 – Laravel Kurulumu</h1>
Laravel’i kurmak için kullanabileceğimiz birçok yöntem var.  Burada 2 yöntemi anlatacağım.

Öncelikle cmd/windows power shell/ git bash vb. bir konsol uygulamasına ihtiyacımız var.

Ben Windows power shell kullanmayı seçtim. Powershelli çalıştırmak için, başlat simgesine tıkladıktan sonra  “power shell” yazıp uygulamayı başlatabilirsiniz.

 

Öncelikle Laravel’i kurmak istediğiniz dizine geçip aşağıdaki kodlardan dilediğimizi çalıştırıyoruz.
					
				
				
				
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
