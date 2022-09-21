<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel14.aspx.cs" Inherits="Laravel.laravel14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Eloquent One to Many</title>
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
					
					<h1>Laravel Eloquent One to Many Relation Nedir?</h1>
				Bir önceki dersimizde sizinle One to One ilişkisini incelemiştik. One to One ilişkisi için örneğimiz bir kişinin yalnız bir tek TC Kimlik Numarası olmasıydı. Bu sefer işleyeceğimiz konu için ise bir tablo satırının (örneğin yazılar) diğer bir tablodan birden fazla satır ile ilişkili olmasıdır (örneğin yorumlar).<br><br>
					
					<h1>Laravel Eloquent One to Many Relation Bağlantısı</h1>
					
					Parantez içerisinde verdiğimiz örnekten yola çıkarsak bir yazı ya da haberin birden fazla yorumu olabilir. Bunun için örnek bir veritabanı hazırlayalım.<br><br>
					
						
php artisan make:model Post -m<br><br>
					
					kodunu yazarak Post adında bir model ve bu modele bağlı bir migration dosyası oluşturuyoruz. Oluşturduğumuz migration dosyasının içerisine<br><br>
					
					
$table->string('title');<br><br>
$table->text('detail');<br><br>
					
					yazarak Post tablosunu basit bir şekilde oluşturuyoruz. Daha sonra ise yorumların yer alacağı tablomuz ve modelimizi oluşturmak için<br><br>
					
					php artisan make:model Comment -m<br><br>
					
					kodunu yazıyoruz ve yine migration içerisine<br><br>
					
					$table->integer('post_id');<br><br>
$table->text('comment');<br><br>
					
					yazarak tablomuzu en basit hali ile oluşturuyoruz. İstersek (tabi aslında gerekli) comment tablosuna user_id yi de ekleyebiliriz.<br><br>
					
					Daha sonra<br><br>
					
					php artisan migrate<br><br>
					
					oluşturduğumuz migration dosyasını veritabanımıza yazıyoruz.<br><br>
					
					<img src="image/laravel-eloquent-one-to-many-1024x792.jpg" alt="" /><br><br>
					
					Yukarıda yer alan görselde Post model dosyası içerisine Comment modeli ile One To Many ilişkisini sağlayacak olan comments() fonksiyonu yazıyoruz. Bu bağlantıyı sağladıktan sonra kodlarımızda yapmamız gereken sadece<br><br>
					
					$comments = Post::find(1)->comments()->get();<br><br>
					
					kodunu yazmak. Bu satır sayesinde yazımıza gelen tüm yorumları listeleyebiliriz. Burada unutmamamız gereken ise bu kod satırının bir array döndürdüğüdür. Yani eğer böyle bir veri ilişkisi sağlarsak oluşan değişkenimizin ekrana basılması için foreach gibi bir döngü kullanmamız gereklidir. Eğer biz post_id yerine yazi_id kullanmak istersek bunun için modelde yer alan comments fonksiyonunda ufak bir değişiklik yapmamız gerek.<br><br>
					
					return $this->hasMany('App\Comment', 'yazi_id');<br><br>
					
					bu değişiklik sonrası tablolarımızda ilişkisel kolonlarımızı belirtmiş olduk.<br><br>
					
					<h1>Laravel Eloquent One to Many Relation Ters Bağlantısı</h1>
					
					Bir önceki ilişki yapımızda da belirttiğimiz gibi yazıların yorumlarımı bulabileceğimiz gibi yorumdan da yazıyı bulabiliriz.<br><br>
					
					<img src="image/laravel-eloquent-one-to-many-1024x792.jpg" alt="" /><br><br>
					
					Yukarıda yer alan ekran görüntüsünde belongsTo kullandığımızı görebilirsiniz. Bu bir önceki One to One ilişkisi ile aynı değişkendir.<br><br>

Bu ilişkiyi kodlarımızda<br><br>
					
					$post = Comment::find(1)->post->title;<br><br>
					
					şeklinde kullanabilir ve post tablomuzdaki istediğimiz veriye sadece yorum id si kullanarak alabiliriz.<br><br>

Yine yukarıdaki gibi 2. parametreyi kullabilirsiniz.<br><br>

					
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
