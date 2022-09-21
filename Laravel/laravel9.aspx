<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel9.aspx.cs" Inherits="Laravel.laravel9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Raw SQL Queries</title>
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
					
					<h1>Laravel Model Nedir?</h1>
				Laravel Model, MVC yapısında veritabanı işlemlerinin yapıldığı bölümdür. Daha önceki yazılarımdan birinde Controller yapısından bahsederken, backend işlemlerinin de Controller tarafından yapıldığından bahsetmiştim. Controller, Model aracılığı ile bu işlemleri yapmaktadır. Yani Model, veritabanı iletişiminden sorumlu kısımdır.
					
					
					<h1>Artisan Kullanarak Model Oluşturma</h1>
					Daha önceki yazılarımda bahsettiğim gibi Laravel Artisan CLI bizim işimizi kolaylaştırmaktadır. Bu komut satırını öğrenmenin hız kazanma adına yararı olduğunu düşünüyorum. Artisan kullanarak Laravel Model oluşturmak için öncelikle komut satırı kullanarak Laravel ana dizine erişiyoruz.<br><br>
					Daha sonra aşağıda yer alan kod bloğunu yazıyoruz(ya da kopyala yapıştır yapıyoruz).<br><br>
					
					
php artisan make:model Page<br><br>
					Yukarıda yer alan kod satırı sayesinde ‘Page’ Model dosyasını oluşturuyoruz. Model oluşturma başarı ile sonuçlandıysa app klasörünün altında Page isimli bir dosya olmuşması gereklidir.<br><br>
					
					<img src="image/laravel-model.jpg" alt=""/><br><br>
					
					Tabi burada unutmamamız gereken Model ile kullanılacak veritabanı tablosununda olması. Bu işlem için isterseniz manuel olarak bir tablo oluşturabilirsiniz ya da yine Artisan kullanarak Migration oluşturabilirsiniz.Henüz Migration yapısından bahsetmediğimiz için biz bu yazıda manuel olarak bir tablo oluşturalım. Veritabanı değişkenlerini .env dosyasından alacağız buradaki değişikliklerin yapılmış olmasına dikkat edelim. Eğer .env size yabancı geldi ise 4 – Laravel Dersleri – Laravel Konfigürasyonu yazıya bir göz atmanızı tavsiye ederim.<br><br>

Yine kendi kurulumuma göre benim .env dosyamdaki veritabanı ile ilgili kısım şu şekildedir;<br><br>

DB_CONNECTION=mysql<br><br>
DB_HOST=127.0.0.1<br><br>
DB_PORT=3306<br><br>
DB_DATABASE=mobilhanem<br><br>
DB_USERNAME=root<br><br>
DB_PASSWORD=<br><br>

tabi lokal bir kurulum olduğu için şifre kısmı boş bırakılmıştır. Gerçek sunucuda bu bölümün güçlü bir şifre ile dolu olması gereklidir.<br><br>

Phpmyadmin yardımı ile mobilhanem adlı bir veritabanı oluşturup içerisine pages tablosunu ekledim. Tablo yapısı ise<br><br>

id => int 11, primary key, autoincrement<br><br>

baslik => varchar 100<br><br>

icerik => text<br><br>

aktif => int 1, default 0<br><br>

Burada Laravel Model için önemli bir konuya dikkat etmeniz gerekmektedir. Oluşturduğunuz Model adı ile veritabanındaki tablo arasında bir ilişki vardır. Bu ilişki oluşturduğunuz tablonun, Model isminin küçük harf ile başlayan ve İngilizce olarak çoğul yapılmış hali olmasıdır.<br><br>

Page (model) => pages (tablo)<br><br>

City (model) => cities (tablo)<br><br>

Peki bu şart mı? tabi ki hayır fakat proje takip edilebilirliği ve hız bakımından tavsiye edilen methoddur. Diyelim ki siz bunu yapmak istemiyor veya daha önceki projenizi Laravel yapısına taşımak istiyorsunuz. Tablo isminizi ‘sayfalar’ olarak kullanmak için Laravel Model içerisine  $table değişkeni belirtmeniz gerekli.<br><br>
					
					protected $table = 'sayfalar';<br><br>
					
	

Yine aynı şekilde Primary Key olarak id kullanmayacaksanız eğer onu da,<br><br>


protected $primaryKey = 'sayfa_id';<br><br>
					
olarak belirtmeniz gerekli.<br><br>

Yukarıda bahsettiğim gibi bu yazıda Migration yapısını anlatmayacağım fakat Migration kullanarak oluşturulan tablolarda timestamps değişkeni vardır. Bu değişken tablonuza ‘created_at’ ve ‘updated_at’ kolonları ekler. Biz manuel oluşturduğumuz tablomuza bunları eklemediğimiz için Model yapımıza bunları tabloda aramaması gerektiğini söylememiz gerek. Yoksa Model hata oluşturacaktır. Bunun için,<br><br>


public $timestamps = false;<br><br>
					
satırı Model içerisine eklememiz gereklidir.<br><br>

Laravel Model yapısında hangi kolonun yazılabilir olduğu sizin tarafınızdan mutlaka belirtilmelidir. Yukarıdaki örnek tablomuzda ‘aktif’ kolonunun değiştirilmesini istemediğimizi düşünürsek bunun için Model içerisine
<br><br>
protected $fillable = ['baslik','icerik'];<br><br>
					
Burada gördüğünüz gibi ‘aktif’ ve ‘id’ kolonlarımız yok. Bunların olmaması Laravel sistemine bunların manipüle edilmemesi gerektiği, korunması gerektiğini belirtir. Yani buraya yazmadığımız kolonlar Controller ile değiştirilemez. Laravel için bu bir çeşit güvenlik önlemidir ve bu önlem Mass Assignment olarak adlandırılır.<br><br>

Eğer biz tüm alanların değiştirilebilir olmasını istiyorsak ya da sadece ‘id’ kolonunun korunmasını istiyorsak ve tablomuzda 30 adet kolon varsa bunu tek tek yazmamız mı gerekecek? Tabi ki hayır. Sürekli bizim iyiliğimizi düşünen Laravel bunun içinde çözüm oluşturmuş ‘guarded’.<br><br>


protected $guarded = [];<br><br>

ya da <br><br>

protected $guarded = ['id'];<br><br>

					
Bu şekilde belirttiğimiz kolonlar harici olanların hepsinin değiştirilebilir olduğunu belirtmiş oluyoruz.<br><br>

Son olarak yukarıdaki kod satırlarının Model içerisindeki yerleşimi aşağıda yer alan resimdeki gibi olmalıdır.<br><br>
					<img src="image/laravel-model-son.jpg" alt=""/>

					
					



				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
