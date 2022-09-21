<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel12.aspx.cs" Inherits="Laravel.laravel12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Eloquent CRUD İşlemleri</title>
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
					
					<h1>Laravel Eloquent Nedir?</h1>
				Laravel yapısının veritabanı işlemlerini model aracılığı ile kolayca yapmanızı sağlayan bileşenidir. Bu sayede özellikle bir sonraki yazımızda işleyeceğimiz tablolar arası ilişki sistemini kolayca kurabilirsiniz.

Yine önceki yazılarımızda kullandığımız Page Controller dosyasını kullanalım. Önceki yazımızda yer alan Page Controller dosyasımızı hatırlamak için ekleyelim.<br><br>
					
					<img src="image/laravel-query-builder.jpg" alt=""/><br><br>
					
					Yukarıda yer alan görseldeki kodlarımız Laravel Query Builder ile yapılmıştı. Şimdi bunları Eloquent ile yapalım.
					
					<img src="image/laravel-eloquent.jpg" alt=""/><br><br>
					
					Hemen ilk değişikliğimiz Laravel Raw SQL Queries ve Laravel Query Builder kullanırken ihtiyacımız olan ‘DB’ methodunu kaldırıp yerine Laravel Eloquent için gerekli olan modelimizi eklemek oldu. Bunun için ‘namespace’ satırının altınabr><br>


use App\Page;<br><br>
					
satırını ekleyerek yapmamız gerek. Tabi bir ‘pages’ tablosunu kullanacağımız için ‘Page’ modelini ekledik.<br><br>

Laravel Eloquent oldukça anlaşılır ve takip edilebilir bir sistemdir. Mesela yeni bir veri eklemek için<br><br>

        $page = new Page;<br><br>
        $page->baslik = "Laravel Eloquent";<br><br>
        $page->icerik = "Laravel Eloquent ekleme işlemlerini yaptık";<br><br>
        $page->aktif = 1;<br><br>
        $page->save();<br><br>

yapmamız yeterli burada sol bölümdeki -> sonra gelenlerin tablodaki kolon isimleri olduğuna dikkat etmemiz gerek.<br><br>

Ayrıca tüm veriyi almak için de oldukça basit olan<br><br>


$pages = Page::all();<br><br>
					
satırını kullanmamız yeterli olacaktır.<br><br>

Laravel Eloquent Where Kullanımı<br><br>

Bu yapıda aynı Query Builder gibi where kullanımı oldukça gelişmiştir. Bu tanım iki ya da üç değişiken ile kullanılabiliyor. Bunu şu şekilde açıklayabiliriz. Eğer iki değişkenli bir tanım kullanılacak ise örneğin<br><br>

Page::where('aktif', 1)->get();<br><br>
					
Eğer iki değişkenli bir where ifadesi kullanırsanız bu eşitlik anlamı taşır. Eşitlik harici durumlar için ise üç değişkenli where kullanmalısınız<br><br>


Page::where('aktif', '!=', 1)->get();<br><br>

bunun sql karşılığı ise<br><br>

 
select * from pages where aktif!=1;<br><br>
Gördüğünüz gibi aslında Query Builder da yer alan tablo odaklamasını bizim yerimize Laravel Eloquent model yapısını kullanarak yapmaktadır.<br><br>

				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
