<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel5.aspx.cs" Inherits="Laravel.laravel5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Route Sistemi ve Kullanımı</title>
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
					
					<h1>Laravel Route Sistemi ve Kullanımı</h1>
				Route kullanımı laravel kurulumundan sonra sistemi öğrenmek için atılacak temel adımdır. Route ile sisteminize gelecek olan istekleri Controller, View gibi bölümlere yönlendir ve istek için çalışacak kod parçacıklarına ulaşırsınız. Bunun için laravel framework yapısını route ile öğrenmeye başlamak uygun olacaktır.

İlk olarak daha önceki derslerde laravel 5.4 ile başlandığı için ben de onunla devam edeceğim. Şu andaki güncel sürüm 5.5 olmasına karşın bu yazıda bahsedeceğim hususlar için 5.5 ile 5.4 arasında hiçbir fark yoktur.<br><br>
					Laravel kurulum dizininde yer alan ‘routes/web.php’ dosyasını açıyoruz.<br><br>
					
					<img src="image/laravel-route-1024x640.png" alt=".."><br><br>
					
					Sıfır kurulum yaptığımızı düşünürsek eğer karşımıza yorum kısmı hariç aşağıdaki kod gelecektir.<br><br>

PHP
Route::get('/', function () {
    return view('welcome');
});<br><br>


Bu kod, sitenizin giriş ekranı yani ‘/’ için ‘welcome’ View dosyasının çalışacağını belirtir. Burada yer alan ‘Route::get…’ bölümü ise isteğin geldiği methodu belirtir. Kullanabileceğimiz methodlar;<br><br>

PHP
Route::get($url, $callback);
Route::post($url, $callback);
Route::put($url, $callback);
Route::patch($url, $callback);
Route::delete($url, $callback);
Route::options($url, $callback);<br><br>

Burada önemli bir not belirtmekte fayda görüyorum. POST, PUT ve DELETE methodlarını çağırabilmek için CSRF koruması yapmamız gerekli. Buna daha sonraki derslerimizde bahsedeceğim ama bu yazıda ufak bir not olarak belirtmek istedim.

Konumuza dönecek olursak ‘$url’ gelen internet sitenizin adresi, ‘$callback’ ise çalışacak fonksiyonu belirtiyor. İlk örneğimize bakarsak çalışacak ‘$url’ için ‘/’ girilmiş ve ‘$callback’ içinse function ile başlayan bölüm belirtilmiş. Burada fonksiyon ile beraber ‘View‘ çalışması sağlanmış.<br><br>

Route ile Controller çağırmak için aşağıdaki gibi bir kod gereklidir.<br><br>

PHP
Route::get('kullanici/profil', 'UserController@uyeGoster');
değişkende ilk önce Controller ismi daha sonrada fonksiyonun adı kullanılmalıdır.<br><br>
					
					
					
					
					
					
					
					
					
					<h1>Laravel Route İsimlendirme</h1>
					Laravel route için isimlendirme (Name) kullanımı sistem içerisinde route için link verebilmeyi kolaylaştırmak için yapılır.<br><br>

PHP
Route::get('kullanici/profil', 'UserController@uyeGoster')->name('profil');<br><br>

Yukarıdaki örnekte bu route için isimlendirme kullandık. Bu isimlendirmeyi laravel view içerisinde de şu şekilde kullanıyoruz;<br><br>

PHP
route('profil');<br><br>

Bu sayede route için gerekli link otomatik olarak oluşturulacaktır.<br><br>
				
					
					<h1>Laravel Route Gruplandırma</h1>
					
					Gruplandırma middleware, namespace, prefix gibi birçok route bağlantısı olan durumlar için uygundur.<br><br>

PHP
Route::namespace('Admin')->group(function () {
      Route::get('yonetici', 'UserController@yoneticiGoster');
});<br><br>

Yukarıdaki örnekte kullanılacak olan Controller dosyalarının ‘Admin’ klasörü altında olduğunu belirttik. Prefix için de bir örnek verelim.<br><br>

PHP
Route::prefix('admin')->group(function () {
    Route::get('yoneticiler', 'UserController@yoneticiListele');
});<br><br>
					
Bu örnekte ise url adresinin ilk bölümünde ‘admin’ gelen bağlantıların yapılacaklarını belirttik. Daha kısa bir açıklama ile buradaki route bilgisine ulaşmak için gelen adresin ‘admin/yoneticiler’ olması gereklidir.<br><br>
					
					<h1>Laravel Route Parametre Kullanımı</h1>
					
					Route ile gelen parametreleri yönlendirebiliriz. Bunun için adresten alınabilecek parametreleri belirtmemiz gerekli.<br><br>

PHP
Route::get('yonetici/{id}', 'UserController@yoneticiGoster');<br><br>
1
Route::get('yonetici/{id}', 'UserController@yoneticiGoster');<br><br>

Bu kodlar birbirininden tek farkı alttakinde yer alan ‘?’. Önce soru işareti olmayanı açıklayayım. Burada adresimiz ‘/yonetici/1’ olarak gelmelidir. Bu örnekte kullanılan ‘1’ id yerine geçer ve kodun devamında yer alan Controller içerisinde kullanılacak bir parametre olarak gönderilir. İkinci kod parçasında ise soru işareti ile anlattığımız şey parametre olabilir ya da olmayabilir demektir. Yani ilk kod ile ‘yonetici’ adresini çalıştıramayız hata alırız ama ikinci kısım ile hem ‘yonetici’ hem de ‘yonetici/1’ adreslerini çalıştırabiliriz. Bunun en yaygın örneği olarak şu senaryoyu düşünebiliriz. Bir yönetim panelinde kullanıcıları listeleyecek ve bu listeden seçilen kullanıcının detay bilgisini göstereceksiniz. Bunun için laravel route sistemini iki şekilde yapabilirsiniz.<br><br>

PHP
Route::get('kullanici', 'UserController@yoneticiGoster');<br><br>
Route::get('kullanici/{id}', 'UserController@yoneticiGoster');<br><br>

PHP
Route::get('kullanici/{id?}', 'UserController@yoneticiGoster');<br><br>

Tabi arada bir satır var gibi görünse de oluşturacağınız sistem büyüdükçe bu kullanımın yararını görebilirsiniz. Unutmamak gerekir ki sistemi temiz kod yani takip edilebilir/anlaşılır yazmak günümüz dünyasında son derece önemlidir.<br><br>
				
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
