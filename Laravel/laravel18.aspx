<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel18.aspx.cs" Inherits="Laravel.laravel18" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Polymorphic Many to Many Relation</title>
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
					
					<h1>Laravel Eloquent Polymorphic Many To Many Relation Nedir?</h1>
				İki ders önce bahsettiğimiz örnekten devam edersek eğer orada one to one ilişkisi kurarak bir Post ve Video nun sadece bir Category değeri olacağını planlamıştık. Bu örnekte ise Post ve Video ların birden fazla Category ile eşleşebildiği durumu örneklendireceğiz. Yine Posts, Videos ve Categories olarak 3 ayrı tablomuz olsun. Bu ilişkide daha önceki yazılarımda yer alan many to many ilişkisi geçerlidir. Yine polymorphic ilişkideki farkı bunun iki değil üç tablo arasında kurulan bir ilişki olmasıdır.<br><br>
					
					<h1>Polymorphic Many To Many Relation Ters Bağlantısı</h1>
					
					Diğer ilişki çeşitlerinde olduğu gibi bu ilişkide de Post/Video bulduktan sonra Categories bilgisine ulaşabildiğimiz gibi Category den de Post/Video bilgilerine ulaşabiliriz.

Bunu yapmak gerekli kod;<br><br>

 $category = App\Category::find(1);<br><br>
 
foreach ($category->videos as $video) {<br><br>
    //<br><br>
}<br><br>

				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
