<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel15.aspx.cs" Inherits="Laravel.laravel15" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Eloquent Many to Many</title>
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
					
					<h1>Laravel Eloquent Many to Many Relation Nedir?</h1>
				Bir önceki dersimizde sizinle One to Many ilişkisini incelemiştik. Önceki dersimizde bir arkadaşımız aslında One to Many ile Many to Many nin farkını yorum olarak sormuştu. Şu şekilde düşünebiliriz. Bir kişinin birden fazla telefon numarası olabilir ama bir telefon numarası sadece bir kişiye aittir. Bu örnek One to Many içindi. Many to Many içinse bir yazının birden fazla kategorisi olabilir ve bir kategori de birden fazla yazıyla bağlantılı olabilir.<br><br>
					
					<h1>Laravel Eloquent Çokaçok Relation Bağlantısı</h1>
					
					Yukarıdaki örnekten devam etmek gerekirse öncelikle bir Post ve bir de Category model ve migration larını hazırlayalım.<br><br>
					
					php artisan make:model Post -m<br><br>
php artasan make:model Category -m<br><br>
					
					kodunu yazarak Post ve Category adında modeller ve bu modellere bağlı migration dosyalarını oluşturuyoruz. Oluşturduğumuz Post migration dosyasının içerisine<br><br>
					
					$table->string('title');<br><br>
$table->text('detail');<br><br>
					
					yazarak Post tablosunu basit bir şekilde oluşturuyoruz. Daha sonra ise kategolerinin migration içerisine<br><br>
					
					$table->string('title'); <br><br>
$table->text('detail');<br><br>
					
					yazarak tablomuzu en basit hali ile oluşturuyoruz. Daha sonra Many to Many ilişkisini kurmamıza yarayacak olan category_post tablosunu manuel olarak biz veritabanında oluşturuyoruz. Bunun modeli ve/ya increment key i olması gerekli değildir.<br><br>
					
					Daha sonra<br><br>
					
					php artisan migrate<br><br>
					
					oluşturduğumuz migration dosyasını veritabanımıza yazıyoruz.<br><br>
					
					<img src="image/manytomany.jpg" alt="" /><br><br>
					
					Yukarıda yer alan görselde Post model dosyası içerisine Category modeli ile Many To Many ilişkisini sağlayacak olan categories() fonksiyonu yazıyoruz. Burada dikkat etmemiz gereken alfabetik olarak dizilmesidir. Yani mutlaka category_post olarak vermeliyiz ismini. Bu tablonun kolonlarını ise post_id ve category_id olarak girebiliriz. Bu bağlantıyı sağladıktan sonra kodlarımızda yapmamız gereken sadece<br><br>
					
					kodunu yazmak. Bu satır sayesinde yazımızın kategorilerini listeleyebiliriz. Burada unutmamamız gereken ise bu kod satırının bir array döndürdüğüdür. Yani eğer böyle bir veri ilişkisi sağlarsak oluşan değişkenimizin ekrana basılması için foreach gibi bir döngü kullanmamız gereklidir. Eğer biz alfabetik olarak tablo oluşturmayacaksak ya da post_id yerine yazi_id kullanmak istersek bunun için post modelde yer alan categories fonksiyonun<br><br>
					
					
return $this->hasMany('App\Category', 'post_category', 'yazi_id', 'kat_id');<br><br>
					
					bu değişiklik sonrası tablolarımızda ilişkisel kolonlarımızı belirtmiş olduk.<br><br>
					
					<h1>Laravel Eloquent Many to Many Relation Ters Bağlantısı</h1>
					
					Bu bağlantı ilişkisinde güzel olan taraflardan biri de ters durumu için yine belongstoMany kullanıyor olmamız. Yani bu ilişiki için farklı bir isim kullanmamız gerekmiyor.<br><br>
					
					<img src="image/manytomany_belongstoMany.jpg" alt="" /><br><br>
					
					Burada daha açıklayıcı olabilmesi için kullanılan tüm parametreleri ekledim. Yukarıda gördüğünüz gibi ilk parametre model ismi, ikinci parametre tablo adı ve kolon adları olarak devam ediyor.<br><br>
					
					Yine aynı şekilde<br><br>
					
					$posts = Category::find(1)->posts()->get();<br><br>
					
					id si bir olan kategorinin içerdiği tüm yazıları görebiliriz.<br><br>
					
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
