<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="laravel17.aspx.cs" Inherits="Laravel.laravel17" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Laravel Polymorphic One To Many Relation</title>
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
					
					<h1>Laravel Eloquent Polymorphic One To Many Relation Nedir?</h1>
				Laravel dökümanında verilen örnekten yola çıkalım. Posts, Videos ve Comments olarak 3 ayrı tablomuz olduğunu varsayalım. Bu ilişkide daha önceki yazılarımda yer alan one to many ilişkisi geçerlidir. Sadece farkı bunun iki değil üç tablo arasında kurulan bir ilişki olmasıdır. En önemli ve polymorphic one to one ilişkisinden farklı olarak comments tablosunda aynı post/video a ait birden fazla comment bulunabilir.<br><br>
					
					<h1>Polymorphic One To Many Relation Bağlantısı</h1>
					
					Yukarıdaki örnekten devam etmek gerekirse öncelikle bir Post ve bir de Video model ve migration larını hazırlayalım.<br><br>

 


php artisan make:model Post -m<br><br>
php artasan make:model Video -m<br><br>


kodunu yazarak Post ve Video adında modeller ve bu modellere bağlı migration dosyalarını<br><br>oluşturuyoruz. Oluşturduğumuz Post ve Video migration dosyalarının içerisine<br><br>


$table-string('title');<br><br>
$table-text('detail');<br><br>
 

yazarak Post ve Video tablolarını basit bir şekilde oluşturuyoruz. Daha sonra ise Categories tablosunu hazırlamak için<br><br>

 php artasan make:model Comment -m<br><br>

yazıyor ve migration tablosu içerisine<br><br>


$table-string('title');<br><br>
$table-int('commentable_id');<br><br>
$table-string('commentable_type);<br><br>
 

yazarak tablomuzu oluşturuyoruz. Comments tablosunda yer alan commentable_id Post veya Video nun id bilgisi olmalı. commentable_type ise ilişkinin oluşturulacağı Model i belirtir.<br><br>

Şimdi de oluşturduğumuz modeller içinde bu ilişkiyi nasıl sağladığımıza bakalım.<br><br>

 

Post model dosyası<br><br>


?php<br><br>

namespace App;<br><br>

use Illuminate\Database\Eloquent\Model;

class Post extends Model<br><br>
{<br><br>
    
     Get all of the post's comments.<br><br>
   
    public function comments()<br><br>
    {<br><br>
        return $this-morphMany('App\Comment', 'commentable');<br><br>
    }<br><br>
}<br><br>

Video model dosyası:<br><br>

?php<br><br>

namespace App;<br><br>

use Illuminate\Database\Eloquent\Model;<br><br>

class Video extends Model<br><br>
{<br><br>
    
     Get all of the video's comments.<br><br>
     
    public function comments()<br><br>
    {<br><br>
        return $this-morphMany('App\Comment', 'commentable');<br><br>
    }<br><br>
}<br><br>

 

Comment model dosyası:<br><br>

?php<br><br>
 
namespace App;<br><br>
 
use Illuminate\Database\Eloquent\Model;<br><br>
 
class Comment extends Model<br><br>
{<br><br>
     Get the owning commentable model.<br><br>
     
    public function commentable()<br><br>
    {<br><br>
        return $this-morphTo();<br><br>
    }<br><br>
}<br><br>
 

Modeller ile elequent bağlantımızı bu şekilde ayarladıktan sonra tabloların veritabanına yazılması için gerekli olan<br><br>

php artisan migrate<br><br>
kodu çalıştırıyoruz.<br><br>

Yukarıdaki kodları sisteme ekledikten sonra Post ya da Video tablosuna bağlı Comment bilgi ya da bilgilerini çekmek içinse<br><br>


$post = App\Video::find(1);<br><br>

UNUTMAYIN Kİ BU BİR ONE TO MANY İLİŞKİSİ YANİ İLİŞKİDEN DÖNEN VERİ ARRAY ŞEKLİNDE OLACAKTIR<br><br>
 
foreach ($post-comments as $comment) {<br><br>
    
}<br><br>
kodunu kullanabiliriz. Bu şekilde Video ya ait Comment veri ya da verilerini listeleyebiliriz. Dönen veri array şekilde olacağı için buna mutlaka dikkat etmelisiniz<br><br>

Örnek olarak;<br><br>
					
					<img src="image/polymorphic-one-to-many-relation.png" alt=""/><br><br>
					<img src="image/polymorphic-one-to-many-relation-2-1024x330.png" alt="" /><br><br>
					
					<h1>Polymorphic One To Many Relation Ters Bağlantısı</h1>
					
					Diğer ilişki çeşitlerinde olduğu gibi bu ilişkide de Post/Video bulduktan sonra Comments bilgisine ulaşabildiğimiz gibi Comments den de Post/Video bilgilerine ulaşabiliriz. (Burada örnek çok mantıklı olmasa da bir yerde işinize yarayabilir)
<br><br>
Bunu yapmak gerekli kod;<br><br>

$comment = App\Comment::find(1);<br><br>
$commentable = $comment->commentable;<br><br>
					
Bir önceki polymorphic ilişki de olduğu gibi herhangi bir  Post / Video belirtmeden Comment modelindeki commentable_type ve commentable_id verileri ile istediğimiz bilgilere ulaşıyoruz<br><br>
					


					
					
				
				</p>
				</div>
				

			</div>
		</div>
	
	
	</div>
</body>
</html>
