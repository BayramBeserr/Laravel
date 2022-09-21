<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel11.aspx.cs" Inherits="Laravel.laravel11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Query Builder</title>
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
					
					<h1>Laravel Query Builder Nedir?</h1>
				Özelleştirilmiş bir standart SQL olarak düşünebiliriz. Model dosyası olmayan tablolar için bu sistemi kullanabiliriz. Bir önceki yazımızda bahsettiğimiz Raw SQL Queries yapısından farklı olarak daha düzenli kod yazılması ve bazı işlemlerin daha akıcı şekilde yazılabilmesini sağlar.


					<img src="image/Laravel-raw-sql-queries.jpg" alt=""/><br><br>
					
					Yukarıda yer alan görseldeki kodlarımızı bir de Query Builder ile yapalım.<br><br>
					
					<img src="image/laravel-query-builder.jpg"<br><br>
					
					Tıpkı Laravel Raw SQL Queries için olduğu gibi Laravel Query Builder kullanmak için de controller dosyasından üst bölümüne ‘DB’ methodunu çağırmamız gerek. Bunun için ‘namespace’ satırının altına<br><br>
					
					use Illuminate\Support\Facades\DB;<br><br>
					
					satırını eklememiz gerek. Bu sayede yazdığımız sql öbekleri Laravel tarafından işlenecektir.<br><br>

Laravel Query Builder bizim için bir çok kolaylığı beraberinde getiriyor. Mesela çoklu insert işlemi yapabiliyoruz.<br><br>
					
					PHP
DB::table('pages')->insert([
    ["baslik" => "Laravel Raw SQL Queries", "icerik" => "Laravel Raw SQL Queries ekleme işlemlerini yaptık", "aktif" => 1]
    ["baslik" => "Laravel Query Builder", "icerik" => "Laravel Query Builder ekleme işlemlerini yaptık", "aktif" => 1]
]);<br><br>
					
					Yukarıda görüldüğü gibi iki insert işlemini tek bir Query ile yapabiliyoruz.<br><br>
					
					<h1>Laravel Query Builder Nedir?</h1>
					
					Bu yapıda where kullanımı oldukça gelişmiştir. Bu tanım iki ya da üç değişiken ile kullanılabiliyor. Bunu şu şekilde açıklayabiliriz. Eğer iki değişkenli bir tanım kullanılacak ise örneğin
					
					Bu yapıda where kullanımı oldukça gelişmiştir. Bu tanım iki ya da üç değişiken ile kullanılabiliyor. Bunu şu şekilde açıklayabiliriz. Eğer iki değişkenli bir tanım kullanılacak ise örneğin<br><br>


DB::table('pages')->where('aktif', 1)->get();<br><br>

Bu kod satırının açıklaması standart bir SQL ile şöyle açıklanabilir;<br><br>


select * from pages where aktif=1;<br><br>

Toparlayacak olursak eğer iki değişkenli bir where ifadesi kullanmak isterseniz bu eşitlik anlamı taşır. Fakat eşitlik hariç her durum için üçünkü bir değişken kullanmalıyız.<br><br>


DB::table('pages')->where('aktif', '!=', 1)->get();<br><br>

bunun sql karşılığı ise<br><br>

select * from pages where aktif!=1;<br><br>
					
Aynı şekilde birden fazla where ifadesi kullanabiliriz. Bunun için ifadeleri peşpeşe eklememiz yeterli.<br><br>

DB::table('pages')->where('aktif', 1)->where('baslik','LIKE', '%Laravel%')->orWhere('icerik','')->get();<br><br>

Yazdığımız bu kod satırı ile iki adet where ve bir adet orWhere ifadesi kullandık. Bunu SQL kodu olarak yazmak istersek aşağıdaki gibi bir kod yazabiliriz.<br><br>

select * from pages where aktif = 1 and baslik Like '%Laravel%' or icerik = '';<br><br>


					
					
					
		
					
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
