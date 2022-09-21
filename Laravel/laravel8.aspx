<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel8.aspx.cs" Inherits="Laravel.laravel8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Blade Templates</title>
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
					
					<h1>Laravel Blade Templates</h1>
				Blade aslında bir şablon sistemidir. İçerisine alışık olduğunu PHP kodlarını da yazabilmeniz bir çok yazılımcının Laravel öğrenirken kendini rahat hissetmesini sağlamaktadır. Daha önce PHP ile site ya da uygulama yazdıysanız özellikle üst veya alt kısımlar için tek bir dosya kullanıp, onu her sayfaya ‘include’ ile çağırmışsınızdır. Bunun amacı tüm sitenizin üst kısmında yapacağınız değişikliğin tek tek her php dosyasında değil; tek bir yerden yapmanızı sağlamaktır. Laravel Blade Templates, içinse bu özellik layouttur. PHP ile yaptığınız ‘include’ durumundan farklı olarak burada bir ana şablon tanımlar ve diğer sayfaları bu şablonu ‘extend’ ederek oluşturursunuz. Hemen bir şablon örneği yazalım.<br><br>
					
					<img src="image/blade.PNG" alt=""/><br><br>
					
					
					Yukarıdaki şablona dikkat ederseniz ‘title’ etiketleri arasında @yield(‘başlık’) kodunu yerleştirdik. Bu oluşturacağımız diğer sayfalar ile bu bölümünün iletişimini sağlayacak olan kod kısmıdır. Şimdi de bir alt daha doğrusu genişletilmiş bir sayfa yazalım.<br><br>
					
					<img src="image/blade2.PNG" alt=""/><br><br>
					
					Şablon sayfamızdaki değişkenlerle bir sayfa oluşturmak çok kolaylaştı. İhtiyacımız olan alanları ekleyip o alanları doldurmamız yeterli olacak.

İlk satırda yer alan ‘extends’ oluşturduğumuz alt sayfanın hangi üst sayfadan çoğaltılacağını açıklıyor. Daha sonrada sizin de göreceğiniz gibi baslik ve icerik için gerekli alanları belirterek alt sayfanın verilerini bu alanlara yazdık. Bu şekilde alt sayfalar için genel bir şablona sahip oluyoruz<br><br>
					
					
				
					
					<h1>Laravel Blade Templates Döngüler</h1>
					Yazılım dillerinde belki de en çok kullanılan terimlerdir döngüler. Bu yüzden yazımda bu döngülere değinmenin uygun olacağını düşündüm.<br><br>
					
					<img src="image/laravel-blade-templates.jpg" alt=""/><br><br>
					
					Üstteki ekran görüntülerinde sol taraf blade ile sağ taraf ise düz PHP ile yapılmıştır. Özellikle sol bölümde seçili alanda önemli bir nokta var. PHP kodlarının içerisine bir yazı yazdırmak istediğimizde ya PHP etiketlerini kapatmamız ya da ‘echo’ kullanmamız gerekli. Fakat Laravel Blade Templates için bu duruma gerek yok. Döngüler kendi satırlarında biter ve alt satıra indiğinizde artık orası HTML olarak okunur.

Yine sol tarafta görebileceğiniz gibi değişkenler de ‘{{‘ ile ‘}}’ arasına yazılarak kısaltılmış bir ‘echo’ kullanılmış olunuyor. Kullanılan çift süslü parantezler XSS engellemen adına ‘htmlspecialchars’ fonksiyonu kullanılmış hali ile gelmektedir. Yani HTML etiketleri bu değişkenden temizlenir. Siz eğer HTML etiketli halini kullanmak isterseniz ‘{!!’ ile ‘!!}’ arasına yazmalısınız değişkeninizi. Yine bir örnek kod ile anlatmaya çalışayım.<br><br>
					
					PHP
$x = "<p>Buraya bir paragraf gelecek</p>";<br><br>

{{$x}} // çıktısı Buraya bir paragraf gelecek<br><br>

{!!$x!!} // çıktısı <p>Buraya bir paragraf gelecek</p><br><br>


				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
