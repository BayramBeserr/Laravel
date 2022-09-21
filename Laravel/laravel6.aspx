<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel6.aspx.cs" Inherits="Laravel.laravel6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Controller Yapısı ve Oluşturulması</title>
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
					
					<h1>Laravel Controller Nedir?</h1>
				Laravel Controller, MVC yapısında frontend ve backend arasında işlem gören katmandır. Bunu biraz açmak gerekirse; mesela kullanıcıların önyüzde etkileşimde oldukları bir form(üye giriş formu) ile bu formun veritabanında yapılacağı sorgular arasında işlem yapılan kısmıdır. Aslında bizim veritabanı işlemlerini ve/veya kullanıcıdan gelen verileri işleyeceğimiz bölümdür. Yaptığımız bu girişten sonra hemen Laravel Controller oluşturmaya başlayalım.

					
					
					
			
					
					<h1>Artisan Kullanarak Controller Oluşturma</h1>
					Bildiğiniz üzere Laravel sisteminde Artisan CLI (komut satırı arayüzü) bulunmaktadır. Bu arayüz bizi bir çok dertten kurtarır ve projelerimize hız kazandırır. Artisan arayüzünü kullanarak Controller, Model, Migration oluşturabiliriz. Artisan ile Laravel Controller oluşturmak için öncelikle komut satırı yardımı ile sistemimizde Laravel yapısının yüklü olduğu ana dizine erişiyoruz. Benim bilgisayarım için bu adres;

“C:\xampp\htdocs\mobilhanem>”

Daha sonra aşağıda yer alan kod bloğunu yazıyoruz(ya da kopyala yapıştır yapıyoruz).<br><br>

PHP
php artisan make:controller AdminController<br><br>

Bu kod satırında sonra bulunan ‘AdminController’ bizim oluşturduğumuz Laravel Controller için belirlediğimiz ad olacaktır.<br><br>
					
					<img src="image/laravel-controller.png" alt=",,"/><br><br>
					
					Yazımın başında da belirttiğim gibi controller ile veritabanı işlemlerini yapabiliyoruz. Burada (belki daha önceden de bildiğiniz) CRUD kavramından kısaca bahsetmem gerek. CRUD, ingilizce Create(Oluştur)-Read(Oku)-Update(Güncelle)-Delete/Destroy(Sil) kelimelerinin baş harflerinden oluşmuş bir kısaltmadır aslında. Daha önce kullandığımız artisan komutuna basit bir parametre ekleyerek CRUD için gerekli tüm fonksiyonları oluşturabiliriz. Yine Laravel yüklediğimiz anadizine geliyor ve aşağıdaki gibi daha önce yazdığımı kodun sonuna –resource ekliyoruz.(Önceki örneği çalıştırdıysanız Controller adı farklı olmalıdır)<br><br>

PHP
php artisan make:controller PageController --resource<br><br>

					<img src="image/laravel-controller-r.jpg" alt=":"><br><br>
					
					İki ekran görüntüsü arasındaki farkı görebilirsiniz. Temel olarak CRUD için gerekli tüm fonksiyonları tek bir satır ile oluşturduk. Bu fonksiyonları bira daha açıklamaya çalışayım. PageController ın Sayfa(Page) işlemleri için kullanıldığını varsayalım.

index() -> tüm sayfaları listeme için kullanılan fonksiyon,<br><br>

create() -> yeni bir sayfa oluşturmak için kullanılacak formu oluşturan fonksiyon<br><br>

store() -> yeni sayfanın veritabanına yazılmasını kontrol eden fonksiyon<br><br>

edit() -> düzenlenecek sayfanın formunu oluşturan fonksiyon<br><br>

update() -> düzenlenecek sayfanın işlemlerini yapan fonksiyon<br><br>

destroy() -> sayfayı yok eden 🙂 silinmesi için kullanılan fonksiyon<br><br>



				
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
