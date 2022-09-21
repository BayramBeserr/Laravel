<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel13.aspx.cs" Inherits="Laravel.laravel13" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Eloquent One to One</title>
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
					
					<h1>Laravel Eloquent One to One Relation Nedir?</h1>
				Bir önceki dersimizde sizinle paylaştığım Eloquent sisteminin model yapıları üzerinden etkileşimli olduğunu belirtmiş ve Eloquent sisteminin en önemli yapısı olarak Relation (ilişki) sistemleri olduğunu belirtmiştim. Şimdi bu ilişkilerin en basit hali olan Eloquent One to One Relation sistemini inceleyelim.

Örnek olarak, her kullanıcının sadece tek bir TC Kimlik Numarası olduğunu ele alalım. Burada ilişki kurabilmek için birden fazla veritabanına sahip olmalıyız. Bunun için TC Kimlik Numarasını ekstra bir kolon da yapabiliriz fakat o zaman bir ilişki kuramayız. Bu yüzden numaraların farklı bir tabloda tutulacağı gibi gerçekçi olmayan bir veritabanı hazırlamalıyız.<br><br>
					
					php artisan make:model Tckn -m<br><br>
					
					kodunu yazarak Tckn adında bir model ve bu modele bağlı bir migration dosyası oluşturuyoruz. Oluşturduğumuz migration dosyasının içerisine<br><br>
					
					$table->integer('user_id');<br><br>
					$table->string('tckn');<br><br>
					
					yazarak User tablosu ile ilişkisini kuracağımız user_id kolonunu ve numaraları barındıracak kolonu ekliyoruz.<br><br>
					
					Daha sonra<br><br>
					
					php artisan migrate<br><br>
					
					oluşturduğumuz migration dosyasını veritabanımıza yazıyoruz.<br><br>
					
					<img src="image/laravel-eloquent-one-to-one-1-1024x842.jpg" alt="" /><br><br>
					
					Yukarıda yer alan görselde User model dosyası içerisine Tckn modeli ile ilişkisinin sağlayacağımız fonksiyonu yazıyoruz. Bu bağlantıyı sağladıktan sonra kodlarımızda yapmamız gereken sadece<br><br>
					
					$tckn = User::find(1)->tckn->tckn;<br><br>
					
					bu sayede kullanıcımızın kimlik numarasını almış oluyoruz. Sağ bölümde yer alan ilk tckn fonksiyonumuzun adı en sondaki ise kolon adıdır. Eğer biz user_id yerine person_id kullanmak istersek bunun için modelde yer alan tckn fonksiyonunda ufak bir değişiklik yapmamız gerek.<br><br>
				
					return $this->hasOne('App\Tckn', 'person_id');<br><br>
					
					bu değişiklik sonrası tablolarımızda ilişkisel kolonlarımızı belirtmiş olduk.<br><br>

Şu andaki ilişki yapısı üyelerin kimlik numarasını bulmak üzere. Fakat bunun bir de zıt yönlü ilişkisini kurmak istersek yani kimlik numarasından kullanıcıyı bulmak istersek yapmamız gereken bu ilişkinin tersinin de olduğunu belirtmek.<br><br>
					
					<img src="image/laravel-eloquent-one-to-one-1024x861.jpg" alt="" /><br><br>
					
					Yukarıda yer alan ekran görüntüsünde belongsTo kullandığımızı görebilirsiniz. Bu bize tckn modelinin user modeline aitlik ilişkisi oluşturur.<br><br>
					
					$username = Tckn::find(1)->user->name;<br><br>
					
					şeklinde kullanabilir ve user tablomuzdaki istediğimiz veriye sadece kimlik numarası bilerek ulaşabiliriz.<br><br>

Yine yukarıdaki gibi 2. parametreyi kullabilirsiniz.<br><br>


		
					
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
