<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel16.aspx.cs" Inherits="Laravel.laravel16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Polymorphic One To One Relation</title>
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
					
					<h1>Laravel Eloquent Polymorphic One To One Relation Nedir?</h1>
				Daha önceki yazılarımızda bahsettiğimiz ilişki örneklerinden farklı olarak polymorphic ilişki de birden fazla tabi ilişki içerisindedir. Örnek vermek gerekirse, bir videos ve bir de posts tablolarınız olduğunu varsayalım. Bu tabloların ikisi de ayrı bir categories tablosu ile birebir ilişki içinde olması durumudur. Burada önemli nokta video ve/ya post girdileri birden fazla category e sahip olamazlar.<br><br>
					
					<h1>Polymorphic One To One Relation Bağlantısı</h1>
					
					Yukarıdaki örnekten devam etmek gerekirse öncelikle bir Post ve bir de Video model ve migration larını hazırlayalım.<br><br>
				
php artisan make:model Post -m<br><br>
php artasan make:model Video -m<br><br>

					kodunu yazarak Post ve Video adında modeller ve bu modellere bağlı migration dosyalarını oluşturuyoruz. Oluşturduğumuz Post ve Video migration dosyalarının içerisine<br><br>

$table->string('title');<br><br>
$table->text('detail');<br><br>


yazarak Post ve Video tablolarını basit bir şekilde oluşturuyoruz. Daha sonra ise Categories tablosunu hazırlamak için<br><br>


 php artasan make:model Category -m<br><br>
 
yazıyor ve migration tablosu içerisine<br><br>


$table->string('title');<br><br>
$table->int('categoryable_id');<br><br>
$table->string('categoryable_type);<br><br>

yazarak tablomuzu oluşturuyoruz. Category tablosunda yer alan categoryable_id Post veya Video nun id bilgisi olmalı. categoryable_type ise ilişkinin oluşturulacağı Model i belirtir.<br><br>

Oluşturduğumuz modelleri aşağıdaki gibi düzenliyoruz.<br><br>

Video dosyası<br><br>
					
					<img src="image/one-to-one-polymorphic-relations-1.jpg" alt="" /><br><br>
					
					Post dosyası:<br><br>
					<img src="image/one-to-one-polymorphic-relations-2.jpg" alt="" /><br><br>
					
					Category dosyası:<br><br>
					<img src="image/one-to-one-polymorphic-relations-3.jpg" alt="" /><br><br>
					
					
					Tabloların veritabanına yazılması için gerekli olan<br><br>

php artisan migrate<br><br>

kodu çalıştırıyoruz.<br><br>

Yukarıdaki kodları sisteme ekledikten sonra Post ya da Video tablosuna bağlı Category bilgisini çekmek içinse<br><br>

$category = Post::find(1)->category->title;<br><br>

kodunu kullanabiliriz. Bu şekilde Post un bağlı olduğu Category nin title bilgisine ulaşabiliriz.<br><br>
					
					<h1>Polymorphic One To One Relation Ters Bağlantısı</h1>
					
					Diğer ilişki çeşitlerinde olduğu gibi bu ilişkide de Post/Video bulduktan sonra Category bilgisine ulaşabildiğimiz gibi Category den de Post/Video bilgilerine ulaşabiliriz.<br><br>

Bunu yapmak gerekli kod;<br><br>

$category = Category::find(1);<br><br>
$categoryable = $category->categoryable;<br><br>

Dikkat ederseniz herhangi bir Post / Video belirtmem gerekmiyor. Çünkü zaten Category tablosunda hangi model ile ilişkili olduğunu categoryable_type ve categoryable_id ile tutuyoruz.<br><br>
				 
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
