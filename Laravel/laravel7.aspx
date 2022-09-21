<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel7.aspx.cs" Inherits="Laravel.laravel7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Controller Veri Aktarımı</title>
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
					
					<h1>Route ile Laravel Controller Veri Aktarımı</h1>
				Daha önceki derslerde bahsettiğimiz gibi route Laravel yapısı için gelen isteklerin yönlendirildiği alanlardır. Yani route ile controller yönlendirmesi yapabileceğimiz için veri aktarımını da yapabilmemiz gerekli. Başka bir değişle; .htaccess ile yaptığımız php dosyalarına veri aktarımını route ile yapabiliyoruz.<br><br>
					
					<img src="image/route-controller-veri-aktarimi.jpg" alt=""/><br><br>
					
					Yukarıdaki ekran görüntüsünde sol bölüm routes/web.php ve sağ bölümdeki görsel ise app/Http/Controllers/PageController.php. Sol tarafa dikkat ederseniz iki adet yeni route var. Bunlar arasındaki fark tek bir soru işaretidir. Bu soru işaretinin anlamı ise “id” değişkeni olabilir ya da olmayabilir olarak değerlendirilir. Yani<br><br>
					
					
Route::get('sayfa/{id}', 'PageController@index');<br><br>
					
					olan kod satırı için “id” mutlaka olmalıdır. Olmadığında route hatası alınacaktır.<br><br>

Fakat;<br><br>


Route::get('sayfa/{id?}', 'PageController@index');<br><br>
					
olan kod satısı içinse “id” değişkeni şart değildir.<br><br>

Bu şekildeki url adreslerini contoller fonksiyonunda ise değişken atayarak kullanıyoruz. Sağ tarafta bulunan index($id) fonksiyonu url adresinden gelen id yi controller içinde kullanılabilir duruma getiriyor.



					
					
			
					
					<h1>View ile Laravel Controller Veri Aktarımı</h1>
					Route ile gelen, controller içerisinde oluşturulan ve/ya veritabanı ile yapılan işlemler sonrası getirilen verilerin view tarafına ulaştırılmasıdır.<br><br>


Bu aşamada yukarıdaki ekran görüntüsünü baz aldığımızda page view’a aktarmak için;<br><br>


PHP
return view('page', compact('id'));<br><br>


ya da <br><br>


return view('page')->with('id', $id);<br><br>


 
ya da <br><br>

 
return view('page')->with('id', $id);<br><br>

					
Yukarıdaki kod blokları iki şekilde de aynı şekilde sonuçlanır ve bu şekilde contorller ile view arasında veri aktarımını sağlamış oluruz. İlerki derslerde değinebilir ama yeri gelmişken view içerisinde bu değişkeni nasıl yazdırıldığından bahsetmek istiyorum. Blade dosyasında sadece yazdırmak için<br><br>


PHP
Gelen id: {{$id}}<br><br>


kod bloğunu kullanabildiğimiz gibi<br><br>


Gelen id: <?php echo $id; ?><br><br>


şeklinde de bildiğimiz php ile yazdırabiliriz<br><br>

				
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
