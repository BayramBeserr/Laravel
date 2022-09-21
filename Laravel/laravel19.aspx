<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel19.aspx.cs" Inherits="Laravel.laravel19" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Query Relation Kullanımı</title>
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
					
					<h1>Laravel Query Relation Kullanımı</h1>
				Daha önceki derslerimizde incelediğimiz eloquent relation methodlarından olan one to many ilişkisi üzerinden devam edeceğim.<br><br>
					
					<img src="image/laravel-query-relation-eager-loading-1024x640.png" alt=""/><br><br>
					
					WordPress sistemini düşündüğümüzde bir kullanıcının (User) birden fazla yazısı (Post) olabilir. Bu durumda kullanıcı id si 1 olanların yazılarını bulmak için<br><br>


$user = App\User::find(1);<br><br>

$user = App\User::find(1);<br><br>
 
şeklinde kod bloğu yeterli olacaktır. Gördüğünüz gibi ekstra bir sql yazmadan kullanıcının tüm yazılarını bu şekilde bulabiliriz.<br><br>

Ayrıca diğer methodları da kullanabiliriz. Örneğin where ve orWhere methodlarının kullanıma bakalım<br><br>
					
					$user = App\User::find(1);<br><br>
 
$active_posts = $user->posts()->where('active', 1)->get();<br><br>
					
	
$posts = $user->posts()->where('active', 1)->orWhere('like', '>', 10)->get();<br><br>
 
// select * from posts where user_id = 1 and active = 1 or like >= 100<br><br>
					
					Buradaki hatayı sql bloğundan da görebilirsiniz. Üstteki sorguda like i 100den fazla ya da eşit olan tüm postlar sergilenir. Bunu engellemek için where bloğunu gruplama sistemini kullanamız gerekli.<br><br>
					
					Bunun için<br><br>
					
					$user = App\User::find(1); <br><br>
 
$posts = $user->posts()<br><br>
        ->where(function ($query) {<br><br>
            return $query->where('active', 1)<br><br>
                         ->orWhere('like', '>=', 100);<br><br>
        })<br><br>
        ->get();<br><br>
 
// select * from posts where user_id = 1 and (active = 1 or like >= 100)<br><br>
					
					şeklinde yaptığımızda active = 1 olan veya like verisi 100den fazla ya da eşit olanlar listelenir ama bu durumda sadece user_id bilgisi 1 olan postlar listelenir.<br><br>

Laravel query relation kullanımı sırasında aklımızda tutmamız gereken aslında bu method lazy loading ile çekildiğidir. Yani kullanmadığınız sırada bir sorgu oluşturmuyor veritabanı üzerinde. Bu da gereksiz kaynak kullanımının önüne geçmektedir.<br><br>
					
					<h1>Laravel Query Relation Kullanımı N + 1 Sorunu</h1>
					
					Kullandığımız relation methodlarında N + 1 olarak adlandırdığımız bir sorun oluşmakta. Bunun sebebini şu şekilde açıklamaya çalışacağım. Üst tarafta verdiğimiz örneğin tersini düşünelim. Yani yazı (Post) üzerinden kullanıcı (User) bilgilerine ulaşmaya çalışalım.<br><br>
					
					$posts = App\Post::all(); <br><br>
 
foreach ($posts as $post) { <br><br>
   echo $post->user->name; <br><br>
}<br><br>
					Yukarı yer alan kod bloğu ile 10 adet yazıyı listeleme sayfası ile gösterdiğimizi düşündüğümüzde her yazı için ekstra olarak ayrı bir user sorgusu yapacaktır. Bu yüksek veri içeren sistemlerde tabi ki büyük bir sorun olacaktır. Tabi laravel yapısının bunun içinde bir çözümü var.<br><br>
					
					<h1>Eager Loading</h1>
					Eager loading kullanarak yazıları (post) çekerken kullanıcı bilgilerini de çekebilir böylece yukarıdaki gibi 11 sorgu değil sadece 2 sorgu yaparız.<br><br>
					
					$posts = App\Post::with('user')->get();<br><br>
 
foreach ($posts as $post) {<br><br>
    echo $post->user->name;<br><br>
}<br><br>
 
// select * from posts<br><br>
 
// select * from users where id in (1, 2, 3, 4, 5, ...)<br><br>
					
					
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
