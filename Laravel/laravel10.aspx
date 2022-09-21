<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel10.aspx.cs" Inherits="Laravel.laravel10" %>

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
					
					<h1>Laravel Raw SQL Queries Nedir?</h1>
				Laravel Raw Sql Queries aslında laravel sisteminde standart sql söz dizilimi yazmanızı sağlayan bir sistemdir. Laravel içerisinde daha sonraki derslerimde anlatacağım Eloquent sisteminden farklı olarak burada düz php yazılımından alışık olduğunuz sorguları yazabilmenizi sağlar. Aralarındaki en önemli fark ise büyük verilerde hızdır. Raw SQL Queries, Eloquent yazımıda göre daha hızlı çalışmaktadır. O yüzden büyük verili sistemlerde raw kullanmak performans açısından olumlu olacaktır.<br><br>

Daha önceki derslerimizle takibi olabilmesi adına daha önce oluşturduğumuz Page Controller verisini kullanalım. Page Controller içerisindeki fonksiyonlarımızı hatırlamakta fayda var.<br><br>
					
					<img src="image/laravel-controller-r (1).jpg" alt=""/><br><br>
					
					Tabi bu Page Controller için bir de Page Model oluşturmuştuk onu da yeniden hatırlayalım<br><br>
					
					<img src="image/laravel-model-son (1).jpg" alt=""/><br><br>
					
					Bu iki görseli daha detaylı incelemek isterseniz Laravel Controller Yapısı ve Oluşturulması ve Laravel Model Yapısı ve Kullanımı yazılarıma tekrar bakabilirsiniz.<br><br>

Öncelikle, Laravel Raw SQL Queries kullanmak için controller dosyasından işlemleri anlayıp Laravel sistemi içerisinde işleyecek olan ‘DB’ methodunu çağırmamız gerek. Bunun için ‘namespace’ satırının <br><br>
					
					satırını eklememiz gerek. Bu sayede yazdığımız sql öbekleri Laravel tarafından işlenecektir.<br><br>

Şimdi Laravel Raw SQL Queries ile ilgili örnek sorgular yazalım.<br><br>

Laravel Raw SQL Queries select<br><br>

Select sorgusunu için PageController dosyasındaki index() fonksiyonunda kullanalım.<br><br>
					
					public function index()<br><br>
{<br><br>
    $pages = DB::select('select * from pages where aktif= ?', [1]);<br><br>
    $pages = DB::select('select * from pages where aktif= :aktif',['aktif' = 1]); <br><br>
}<br><br>
					
					Burada ikisi de aynı işlemi yapan satırlar var. Bunlardan birisini kullanmanız yeterli olacaktır. Ben sizi kullanım şeklini göstermek için aynı işlemi yapan iki ayrı satır ekledim.<br><br>
					
					<img src="image/Laravel-raw-sql-queries.jpg" alt=""/><br><br>
					
					Yukarıdaki görselde index(), store(), update() ve destroy() fonksiyonları için Raw SQL Queries yazdığımızı görebilirsiniz.

Bu kısımda ufak bir not eklemeliyim; bu sistem ile yazılan update ve delete sorguları kaç adet satırın sorgudan etkilendiği verisini döndürür.
					
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
