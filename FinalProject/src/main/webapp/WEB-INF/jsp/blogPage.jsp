<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog Page</title>
<script type="text/javascript">

$(window).scroll(function() {
	  var scroll = $(window).scrollTop();
	  $(".zoom img").css({
	    transform: 'translate3d(-50%, -'+(scroll/100)+'%, 0) scale('+(100 + scroll/5)/100+')',
	    //Blur suggestion from @janwagner: https://codepen.io/janwagner/ in comments
	    //"-webkit-filter": "blur(" + (scroll/200) + "px)",
	    //filter: "blur(" + (scroll/200) + "px)"
	  });
	});

</script>
<style type="text/css">
body{
  font-family: Georgia, serif;
  color: #333;
  font-size: 1.4rem;
  line-height: 2rem;
}
a{color: #000;}
h1{
  font-size: 2.6rem;
  line-height: 2.6rem;
}
.content{
  margin: 0 auto;
    max-width: 85%;
    width: 100%;
    height: 100%;
    text-align: justify;
}
main{
margin:90px;
  padding: 1% 0;
  position: relative;
  background: #f5f5f5;
  box-shadow: 0px -10px 60px rgba(0,0,0,0.25);
    height: 100%;
}
footer p{
  font-size: .8rem;
  font-weight: bold;
  color: #ccc;
}
footer a{color: #ccc;}
/* --- Important Pen Styles --- */

.zoom{
  overflow: hidden;
  padding-bottom: 55%;
}
.zoom img{
  position: fixed;
  top: 0%;
  left: 50%;
  max-width: 200%;
  width: 100%;
  transform: translateX(-50%);
  /* Thanks  @bastian_fiessinger. Use when activating blur effect:
  will-change: -webkit-filter, filter, transform; */
}
@media (max-width: 667px) {
  h1{
    font-size: 1.8rem;
    line-height: 2.6rem;
    text-align: left;
  }
  .content{
    margin: 0 auto;
    max-width: 80%;
    width: 100%;
    height: 100%;
    text-align: justify;
  }
  .zoom{
    overflow: hidden;
    padding-bottom: 75%;
  }

}


</style>
</head>
<body>
<header class="zoom">
  <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/927610/pexels-photo-587409.jpeg">
</header>
<main role="main" >
  <div class="content">
    <h1>Zoom Hero Image on Scroll</h1>
     <a href="http://webdesignerwall.com/tutorials/how-to-add-icon-fonts-to-any-element-with-css" alt="webdesignerwall.com" target="_blank">View Tutorial</a>
    <p>	Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Maecenas sed diam eget risus varius blandit sit amet non magna. Nulla vitae elit libero, a pharetra augue. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>
    <p>Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>   
   <p>世界衛生組織（WHO）表示，猴痘（Monkeypox）在世界範圍內的持續傳播可能會導致病毒
開始進入高危人群，包括孕婦、免疫功能低下的人和兒童等。

路透報導，世衛組織29日表示「正在調查有關受感染兒童的報告」，其中包括英國的2例
以及西班牙和法國的後續報告，目前兒童感染猴痘的病例中沒有出現重症情況。猴痘現已
在非洲以外的50多個國家中發現，世衛組織也呼籲各國加強檢測。

世衛組織總秘書長譚德塞（Tedros Adhanom Ghebreyesus）29日在日內瓦的線上簡報中提
到「我擔心（猴痘）持續傳播，因為這表明病毒正在立足，並可能進入高風險人群，包括
兒童、免疫功能低下者和孕婦」。

根據世衛組織統計，自5月爆發猴痘以來已有3400多例死亡，其中大部分發生在歐洲的男
男性接觸者中，今年在病毒傳播更為頻繁的國家也有超過1500例病例和66人死亡。

    上周世衛組織裁定猴痘疫情尚未構成突發公共衛生事件，這是其最高警戒級別。然而譚德
塞表示「世衛組織正在密切追蹤疫情，並將盡快重新召集委員會，以評估情況是否仍然如</p>
   
   
    <footer>
<p>A <a href="http://www.webdeisgnerwall.com" alt="web designer wall" target="_blank">webdesignerwall.com</a> Tutorial</p>
</footer>
  </div>
  
</main>
</body>
</html>