<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!doctype html>

<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="image/favicon.png" type="image/png">
<title>Royal Hotel</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href='<c:url value="/css/blog/bootstrap.css"/>'>
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/linericon/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/nice-select/css/nice-select.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css"/>">
<!-- main css -->
<link rel="stylesheet" href="<c:url value="/css/blog/style.css"/>">
<link rel="stylesheet" href="<c:url value="/css/blog/responsive.css"/>">

<style>

</style>
</head>
<body>
        <!--================Header Area =================-->
                  <jsp:include page="frontLayout/frontHeader.jsp" />
        
<!--         <header class="header_area"> -->
<!-- 		<div class="container"> -->
<!-- 			<nav class="navbar navbar-expand-lg navbar-light"> -->
<!-- 				Brand and toggle get grouped for better mobile display -->
<!-- 				<a class="navbar-brand logo_h" href="index.html"><img -->
<%-- 					src="<c:url value="/images/blog/Logo.png"/>" alt=""></a> --%>
<!-- 				<button class="navbar-toggler" type="button" data-toggle="collapse" -->
<!-- 					data-target="#navbarSupportedContent" -->
<!-- 					aria-controls="navbarSupportedContent" aria-expanded="false" -->
<!-- 					aria-label="Toggle navigation"> -->
<!-- 					<span class="icon-bar"></span> <span class="icon-bar"></span> <span -->
<!-- 						class="icon-bar"></span> -->
<!-- 				</button> -->
<!-- 				Collect the nav links, forms, and other content for toggling -->
<!-- 				<div class="collapse navbar-collapse offset" -->
<!-- 					id="navbarSupportedContent"> -->
<!-- 					<ul class="nav navbar-nav menu_nav ml-auto"> -->
<!-- 						<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li> -->
<!-- 						<li class="nav-item"><a class="nav-link" href="about.html">About -->
<!-- 								us</a></li> -->
<!-- 						<li class="nav-item"><a class="nav-link" -->
<!-- 							href="accomodation.html">Accomodation</a></li> -->
<!-- 						<li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li> -->
<!-- 						<li class="nav-item submenu dropdown active"><a href="#" -->
<!-- 							class="nav-link dropdown-toggle" data-toggle="dropdown" -->
<!-- 							role="button" aria-haspopup="true" aria-expanded="false">Blog</a> -->
<!-- 							<ul class="dropdown-menu"> -->
<!-- 								<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li> -->
<!-- 								<li class="nav-item"><a class="nav-link" -->
<!-- 									href="blog-single.html">Blog Details</a></li> -->
<!-- 							</ul></li> -->
<!-- 						<li class="nav-item"><a class="nav-link" href="elements.html">Elemests</a></li> -->
<!-- 						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</nav> -->
<!-- 		</div> -->
<!-- 	</header> -->
        <!--================Header Area =================-->
        
        <!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area blog_banner_two">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle f_48">Blog Details page</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li class="active">Blog Details</li>
                    </ol>
                </div>
            </div>
        </section>
        <!--================Breadcrumb Area =================-->
        
        <!--================Blog Area =================-->
        <section class="blog_area single-post-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 posts-list">
                        <div class="single-post row">
                            <div class="col-lg-12">
                                <div class="feature-img">
                                    <img src="${contextRoot}/back/article/photo/${article.articleId}" width=550px height=250px alt="">
                                </div>									
                            </div>
                            <div class="col-lg-3  col-md-3">
                                <div class="blog_info text-right">
<!--                                     <div class="post_tag"> -->
<!--                                         <a href="#">Food,</a> -->
<!--                                         <a href="#">Technology,</a> -->
<!--                                         <a href="#">Politics,</a> -->
<!--                                         <a href="#">Lifestyle</a> -->
<!--                                     </div> -->
                                    <ul class="blog_meta list_style">
                                        <li><a href="#">${article.account.accountName}<i class="lnr lnr-user"></i></a></li>
                                        <li><fmt:formatDate pattern="yyyy/MM/dd HH:mm " value="${article.articleDate}" /><i class="lnr lnr-calendar-full"></i></li>
<!--                                         <li><a href="#">1.2M Views<i class="lnr lnr-eye"></i></a></li> -->
<!--                                         <li><a href="#">06 Comments<i class="lnr lnr-bubble"></i></a></li> -->
                                    </ul>
                                    <ul class="social-links">
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-github"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-9 col-md-9 blog_details">
                                <h2>${article.articleTitle}</h2>
                                <p class="excert">${article.articleText}科技日新月異，但不少長輩追不上，仍停留在數十年前的使用習慣。近日師大知名教授林
芳玫到音響店購物，不料過程中與店員產生不愉快，回家後在臉書貼上千字文控訴對方態
度差、太冷漠，文章引發極大回響，但許多人認為是林芳玫自己科技知識不足，更意外引
爆世代大戰。

林芳玫日前在上月底PO文，表示自己使用20年的BOSE CD播放器壞掉，因此前往音響店打
算買新的，但才開口詢問，立刻被店員打槍「沒賣CD Player，現在只有藍芽音響」，當
場被賞了個句號，對方也無意向她介紹產品，大嘆店員「中性、禮貌、冷淡」。即便後來
挑了台5000多元、長得像鉛筆盒的藍芽喇叭試聽，過程中仍是店員毫無反應，她忍不住詢
問「你有聽過這些音樂嗎」，店員只淡淡回「沒聽過」，但既然聽得還算滿意，她還是出
錢買單。

但過了幾天音樂檔無法啟動，於是林芳玫帶著手機和藍芽音響到另一家店詢問，店員幫她
簡單測試後，僅回「都沒問題」，讓她傻眼，直說自己又被句點，對方又是「中性、禮貌
、冷漠」的口氣，不解丈夫花了30分鐘開車載她來，結果店員只用5秒就要打發她，於是
不死心繼續問問題，但店員冷淡回「音樂APP太多，我們無法知道每個APP」。

林芳玫傻眼說，藍芽音響不就是標榜無線上網聽音樂，怎麼會不關音樂APP的事，最終自
己不斷詢問下，終於找到答案，原來是沒有花錢訂閱YouTube，所以免費期限到期，但也
不解，質疑店員一開始就可以跟她說這個可能性，卻還是自己死纏爛打提問才知道，對方
一聽則回「我們的產品，主要消費者是40歲以下的年輕人」，氣得她大罵「這什麼鬼話，
我買了你家產品，就是你們BOSE顧客，怎麼可以這樣對顧客，只想句點我，根本沒打算幫
我解決問題」。

店員事後雖然提供另一個免費聽音樂管道「Spotify」，但林芳玫因為聽不懂，於是要店
員寫在紙條上給她，對方卻稱「你不能要求我做這些事」，她則反駁「我是請教不是要求
」，最終店員妥協，拿起手機打開文件夾給她看，林芳玫一看嘆氣「就這幾個字，寫紙條
那麼難」，繼續追問「這跟YouTube有何不同」，店員才終於第一次回話超過10個字。

文章曝光後引發熱烈討論，但由於字行間可明顯看出林芳玫對於藍芽不甚了解，與現今科
技脫節太多，不少網友開炮反酸「這麼基本的都不懂，難怪店員不爽」、「有大把時間打
千字文，卻不願意花個幾分鐘去Google」、「店員對你還能有耐心已經該偷笑了」、「讓
人不爽的不是你的問題，而是你充滿優越感，以上對下的態度」、「難怪人家都說老師都
是奧客」、「自己也都知道是在拗了，還一副施捨、教育對方的態度」、「根本巨嬰」、
「一堆長輩都仗著自己年紀大，認為年輕人幫他弄到好是應該的，自己卻不會想學習」、
「一直強調中性、禮貌、冷漠在幹嘛，文章就看得讓人夠煩躁，想必口氣也讓店員很不舒
服」。

也有人認為：「兩邊都有問題，教授自以為，店員態度差也是事實」、「BOSE店員我倒是
不太意外」。臉書《通告人生》也對此評論，表示無意指責誰對誰錯，但只能說人跟人相
處實在不容易，但有時人們時常自以為批評別人不友善，卻忽略自己無意間做了讓人不月
的舉動，尤其是一些「是個咖」的大人們，很容易就把那套上對下、專業菁英的驕傲代入
，實在大可不必。</p>
<!--                                 <p> -->
<!--                                     Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed -->
<!--                                 </p> -->
<!--                                 <p> -->
<!--                                     Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed -->
<!--                                 </p> -->
                            </div>
                            <div class="col-lg-12">
<!--                                 <div class="quotes"> -->
<!--                                     MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.										 -->
<!--                                 </div> -->
                                <div class="row">
<!--                                     <div class="col-6"> -->
<!--                                         <img class="img-fluid" src="image/blog/post-img1.jpg" alt=""> -->
<!--                                     </div> -->
<!--                                     <div class="col-6"> -->
<!--                                         <img class="img-fluid" src="image/blog/post-img2.jpg" alt=""> -->
<!--                                     </div>	 -->
                                    <div class="col-lg-12 mt-25">
<!--                                         <p> -->
<!--                                             MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower. -->
<!--                                         </p> -->
<!--                                         <p> -->
<!--                                             MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower. -->
<!--                                         </p>											 -->
                                    </div>									
                                </div>
                            </div>
                        </div>
                        <div class="navigation-area">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                                    <div class="thumb">
                                        <a href="#"><img class="img-fluid" src="image/blog/prev.jpg" alt=""></a>
                                    </div>
                                    <div class="arrow">
                                        <a href="#"><span class="lnr text-white lnr-arrow-left"></span></a>
                                    </div>
                                    <a href="http://localhost:8081/jotravel/front/blogPage/detail?id=${article.articleId-1}"><div class="detials">
                                    
                                       <p>Prev Post</p>
                                        <h4>上一篇</h4>
                                    </div></a>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                                    <a href="http://localhost:8081/jotravel/front/blogPage/detail?id=${article.articleId+1}"><div class="detials">
                                      <p>Next Post</p>
                                        <h4>下一篇</h4>
                                    </div></a>
                                    <div class="arrow">
                                        <a href="#"><span class="lnr text-white lnr-arrow-right"></span></a>
                                    </div>
                                    <div class="thumb">
                                        <a href="#"><img class="img-fluid" src="image/blog/next.jpg" alt=""></a>
                                    </div>										
                                </div>									
                            </div>
                        </div>
<!--                         <div class="comments-area"> -->
<!--                             <h4>05 Comments</h4> -->
<!--                             <div class="comment-list"> -->
<!--                                 <div class="single-comment justify-content-between d-flex"> -->
<!--                                     <div class="user justify-content-between d-flex"> -->
<!--                                         <div class="thumb"> -->
<!--                                             <img src="image/blog/c1.jpg" alt=""> -->
<!--                                         </div> -->
<!--                                         <div class="desc"> -->
<!--                                             <h5><a href="#">Emilly Blunt</a></h5> -->
<!--                                             <p class="date">December 4, 2017 at 3:12 pm </p> -->
<!--                                             <p class="comment"> -->
<!--                                                 Never say goodbye till the end comes! -->
<!--                                             </p> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="reply-btn"> -->
<!--                                            <a href="" class="btn-reply text-uppercase">reply</a>  -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div>	 -->
<!--                             <div class="comment-list left-padding"> -->
<!--                                 <div class="single-comment justify-content-between d-flex"> -->
<!--                                     <div class="user justify-content-between d-flex"> -->
<!--                                         <div class="thumb"> -->
<!--                                             <img src="image/blog/c2.jpg" alt=""> -->
<!--                                         </div> -->
<!--                                         <div class="desc"> -->
<!--                                             <h5><a href="#">Elsie Cunningham</a></h5> -->
<!--                                             <p class="date">December 4, 2017 at 3:12 pm </p> -->
<!--                                             <p class="comment"> -->
<!--                                                 Never say goodbye till the end comes! -->
<!--                                             </p> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="reply-btn"> -->
<!--                                            <a href="" class="btn-reply text-uppercase">reply</a>  -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div>	 -->
<!--                             <div class="comment-list left-padding"> -->
<!--                                 <div class="single-comment justify-content-between d-flex"> -->
<!--                                     <div class="user justify-content-between d-flex"> -->
<!--                                         <div class="thumb"> -->
<!--                                             <img src="image/blog/c3.jpg" alt=""> -->
<!--                                         </div> -->
<!--                                         <div class="desc"> -->
<!--                                             <h5><a href="#">Annie Stephens</a></h5> -->
<!--                                             <p class="date">December 4, 2017 at 3:12 pm </p> -->
<!--                                             <p class="comment"> -->
<!--                                                 Never say goodbye till the end comes! -->
<!--                                             </p> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="reply-btn"> -->
<!--                                            <a href="" class="btn-reply text-uppercase">reply</a>  -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div>	 -->
<!--                             <div class="comment-list"> -->
<!--                                 <div class="single-comment justify-content-between d-flex"> -->
<!--                                     <div class="user justify-content-between d-flex"> -->
<!--                                         <div class="thumb"> -->
<!--                                             <img src="image/blog/c4.jpg" alt=""> -->
<!--                                         </div> -->
<!--                                         <div class="desc"> -->
<!--                                             <h5><a href="#">Maria Luna</a></h5> -->
<!--                                             <p class="date">December 4, 2017 at 3:12 pm </p> -->
<!--                                             <p class="comment"> -->
<!--                                                 Never say goodbye till the end comes! -->
<!--                                             </p> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="reply-btn"> -->
<!--                                            <a href="" class="btn-reply text-uppercase">reply</a>  -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div>	 -->
<!--                             <div class="comment-list"> -->
<!--                                 <div class="single-comment justify-content-between d-flex"> -->
<!--                                     <div class="user justify-content-between d-flex"> -->
<!--                                         <div class="thumb"> -->
<!--                                             <img src="image/blog/c5.jpg" alt=""> -->
<!--                                         </div> -->
<!--                                         <div class="desc"> -->
<!--                                             <h5><a href="#">Ina Hayes</a></h5> -->
<!--                                             <p class="date">December 4, 2017 at 3:12 pm </p> -->
<!--                                             <p class="comment"> -->
<!--                                                 Never say goodbye till the end comes! -->
<!--                                             </p> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                     <div class="reply-btn"> -->
<!--                                            <a href="" class="btn-reply text-uppercase">reply</a>  -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div>	                                             				 -->
<!--                         </div> -->
                        <div class="comment-form">
                            <h4>Leave a Reply</h4>
                            <form>
                                <div class="form-group form-inline">
                                  <div class="form-group col-lg-6 col-md-6 name">
                                    <input type="text" class="form-control" id="name" placeholder="Enter Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Name'">
                                  </div>
                                  <div class="form-group col-lg-6 col-md-6 email">
                                    <input type="email" class="form-control" id="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'">
                                  </div>										
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'">
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control mb-10" rows="5" name="message" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'" required=""></textarea>
                                </div>
                                <a href="#" class="primary-btn button_hover">Post Comment</a>	
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog_right_sidebar">
                            <aside class="single_sidebar_widget search_widget">
                                <div class="input-group">
                                <form action="/jotravel/front/blogIndex" method="get" >
<input  type="text" name="key" placeholder="搜尋文章名稱" id="key" ><input type="submit" id="send" value="🔍" class="searchicon"><a href="http://localhost:8081/jotravel/front/blogIndex"><input type="button" value="全部文章" ></a>  
</form>
<!--                                     <input type="text" class="form-control" placeholder="Search Posts"> -->
<!--                                     <span class="input-group-btn"> -->
<!--                                         <button class="btn btn-default" type="button"><i class="lnr lnr-magnifier"></i></button> -->
<!--                                     </span> -->
                                </div><!-- /input-group -->
                                <div class="br"></div>
                            </aside>
                            <aside class="single_sidebar_widget author_widget">
<!--                                 <img class="author_img rounded-circle" src="image/blog/author.png" alt=""> -->
<%--                                 <h4>${article.account.accountName}</h4> --%>
<!--                                 <p>Senior blog writer</p> -->
<!--                                 <div class="social_icon"> -->
<!--                                     <a href="#"><i class="fa fa-facebook"></i></a> -->
<!--                                     <a href="#"><i class="fa fa-twitter"></i></a> -->
<!--                                     <a href="#"><i class="fa fa-github"></i></a> -->
<!--                                     <a href="#"><i class="fa fa-behance"></i></a> -->
<!--                                 </div> -->
<!--                                 <p>Boot camps have its supporters andit sdetractors. Some people do not understand why you should have to spend money on boot camp when you can get. Boot camps have itssuppor ters andits detractors.</p> -->
<!--                                 <div class="br"></div> -->
                            </aside>
<!--                             <aside class="single_sidebar_widget popular_post_widget"> -->
<!--                                 <h3 class="widget_title">最新文章</h3> -->
<!--                                 <div class="media post_item"> -->
<!--                                     <img src="image/blog/post1.jpg" alt="post"> -->
<!--                                     <div class="media-body"> -->
<!--                                         <a href="blog-details.html"><h3>Space The Final Frontier</h3></a> -->
<!--                                         <p>02 Hours ago</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="media post_item"> -->
<!--                                     <img src="image/blog/post2.jpg" alt="post"> -->
<!--                                     <div class="media-body"> -->
<!--                                         <a href="blog-details.html"><h3>The Amazing Hubble</h3></a> -->
<!--                                         <p>02 Hours ago</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="media post_item"> -->
<!--                                     <img src="image/blog/post3.jpg" alt="post"> -->
<!--                                     <div class="media-body"> -->
<!--                                         <a href="blog-details.html"><h3>Astronomy Or Astrology</h3></a> -->
<!--                                         <p>03 Hours ago</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="media post_item"> -->
<!--                                     <img src="image/blog/post4.jpg" alt="post"> -->
<!--                                     <div class="media-body"> -->
<!--                                         <a href="blog-details.html"><h3>Asteroids telescope</h3></a> -->
<!--                                         <p>01 Hours ago</p> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="br"></div> -->
<!--                             </aside> -->
                            <aside class="single_sidebar_widget ads_widget">
                                <a href="#"><img class="img-fluid" src="image/blog/add.jpg" alt=""></a>
                                <div class="br"></div>
                            </aside>
                            <aside class="single_sidebar_widget post_category_widget">
                                <h4 class="widget_title">文章分類</h4>
                                <ul class="list_style cat-list">
                                    <li>
                                        <a href='http://localhost:8081/jotravel/front/blogIndex?key=台北' class="d-flex justify-content-between">
                                            <p>台北</p>
<!--                                             <p>37</p> -->
                                        </a>
                                    </li>
                                    <li>
                                        <a href='http://localhost:8081/jotravel/front/blogIndex?key=台南' class="d-flex justify-content-between">
                                            <p>台南</p>
                                       
                                        </a>
                                    </li>
                                    <li>
                                        <a href='http://localhost:8081/jotravel/front/blogIndex?key=高雄' class="d-flex justify-content-between">
                                            <p>高雄</p>
                                        
                                        </a>
                                    </li>
                                    <li>
                                        <a href='http://localhost:8081/jotravel/front/blogIndex?key=澎湖' class="d-flex justify-content-between">
                                            <p>澎湖</p>
                                       
                                        </a>
                                    </li>
<!--                                     <li> -->
<!--                                         <a href="#" class="d-flex justify-content-between"> -->
<!--                                             <p>Food</p> -->
<!--                                             <p>15</p> -->
<!--                                         </a> -->
<!--                                     </li> -->
<!--                                     <li> -->
<!--                                         <a href="#" class="d-flex justify-content-between"> -->
<!--                                             <p>Architecture</p> -->
<!--                                             <p>09</p> -->
<!--                                         </a> -->
<!--                                     </li> -->
<!--                                     <li> -->
<!--                                         <a href="#" class="d-flex justify-content-between"> -->
<!--                                             <p>Adventure</p> -->
<!--                                             <p>44</p> -->
<!--                                         </a> -->
<!--                                     </li>															 -->
                                </ul>
                                <div class="br"></div>
                            </aside>
<!--                             <aside class="single-sidebar-widget newsletter_widget"> -->
<!--                                 <h4 class="widget_title">Newsletter</h4> -->
<!--                                 <p> -->
<!--                                 Here, I focus on a range of items and features that we use in life without -->
<!--                                 giving them a second thought. -->
<!--                                 </p> -->
<!--                                 <div class="form-group d-flex flex-row"> -->
<!--                                     <div class="input-group"> -->
<!--                                         <div class="input-group-prepend"> -->
<!--                                             <div class="input-group-text"><i class="fa fa-envelope" aria-hidden="true"></i></div> -->
<!--                                         </div> -->
<!--                                         <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Enter email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email'"> -->
<!--                                     </div> -->
<!--                                     <a href="#" class="bbtns">Subcribe</a> -->
<!--                                 </div>	 -->
<!--                                 <p class="text-bottom">You can unsubscribe at any time</p>	 -->
<!--                                 <div class="br"></div>							 -->
<!--                             </aside> -->
                            <aside class="single-sidebar-widget tag_cloud_widget">
                                <h4 class="widget_title">Tag Clouds</h4>
                                <ul class="list_style">
                                    <li><a href="#">Technology</a></li>
                                    <li><a href="#">Fashion</a></li>
                                    <li><a href="#">Architecture</a></li>
                                    <li><a href="#">Fashion</a></li>
                                    <li><a href="#">Food</a></li>
                                    <li><a href="#">Technology</a></li>
                                    <li><a href="#">Lifestyle</a></li>
                                    <li><a href="#">Art</a></li>
                                    <li><a href="#">Adventure</a></li>
                                    <li><a href="#">Food</a></li>
                                    <li><a href="#">Lifestyle</a></li>
                                    <li><a href="#">Adventure</a></li>
                                </ul>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================Blog Area =================-->
        
        <!--================ start footer Area  =================-->
        	         <jsp:include page="frontLayout/frontFooter.jsp" />
        	
<!--         <footer class="footer-area section_gap"> -->
<!--             <div class="container"> -->
<!--                 <div class="row"> -->
<!--                     <div class="col-lg-3  col-md-6 col-sm-6"> -->
<!--                         <div class="single-footer-widget"> -->
<!--                             <h6 class="footer_title">About Agency</h6> -->
<!--                             <p>The world has become so fast paced that people don’t want to stand by reading a page of information, they would much rather look at a presentation and understand the message. It has come to a point </p> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-6 col-sm-6"> -->
<!--                         <div class="single-footer-widget"> -->
<!--                             <h6 class="footer_title">Navigation Links</h6> -->
<!--                             <div class="row"> -->
<!--                                 <div class="col-4"> -->
<!--                                     <ul class="list_style"> -->
<!--                                         <li><a href="#">Home</a></li> -->
<!--                                         <li><a href="#">Feature</a></li> -->
<!--                                         <li><a href="#">Services</a></li> -->
<!--                                         <li><a href="#">Portfolio</a></li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                                 <div class="col-4"> -->
<!--                                     <ul class="list_style"> -->
<!--                                         <li><a href="#">Team</a></li> -->
<!--                                         <li><a href="#">Pricing</a></li> -->
<!--                                         <li><a href="#">Blog</a></li> -->
<!--                                         <li><a href="#">Contact</a></li> -->
<!--                                     </ul> -->
<!--                                 </div>										 -->
<!--                             </div>							 -->
<!--                         </div> -->
<!--                     </div>							 -->
<!--                     <div class="col-lg-3 col-md-6 col-sm-6"> -->
<!--                         <div class="single-footer-widget"> -->
<!--                             <h6 class="footer_title">Newsletter</h6> -->
<!--                             <p>For business professionals caught between high OEM price and mediocre print and graphic output, </p>		 -->
<!--                             <div id="mc_embed_signup"> -->
<!--                                 <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative"> -->
<!--                                     <div class="input-group d-flex flex-row"> -->
<!--                                         <input name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email"> -->
<!--                                         <button class="btn sub-btn"><span class="lnr lnr-location"></span></button>		 -->
<!--                                     </div>									 -->
<!--                                     <div class="mt-10 info"></div> -->
<!--                                 </form> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-lg-3 col-md-6 col-sm-6"> -->
<!--                         <div class="single-footer-widget instafeed"> -->
<!--                             <h6 class="footer_title">InstaFeed</h6> -->
<!--                             <ul class="list_style instafeed d-flex flex-wrap"> -->
<!--                                 <li><img src="image/instagram/Image-01.jpg" alt=""></li> -->
<!--                                 <li><img src="image/instagram/Image-02.jpg" alt=""></li> -->
<!--                                 <li><img src="image/instagram/Image-03.jpg" alt=""></li> -->
<!--                                 <li><img src="image/instagram/Image-04.jpg" alt=""></li> -->
<!--                                 <li><img src="image/instagram/Image-05.jpg" alt=""></li> -->
<!--                                 <li><img src="image/instagram/Image-06.jpg" alt=""></li> -->
<!--                                 <li><img src="image/instagram/Image-07.jpg" alt=""></li> -->
<!--                                 <li><img src="image/instagram/Image-08.jpg" alt=""></li> -->
<!--                             </ul> -->
<!--                         </div> -->
<!--                     </div>						 -->
<!--                 </div> -->
<!--                 <div class="border_line"></div> -->
<!--                 <div class="row footer-bottom d-flex justify-content-between align-items-center"> -->
<!--                     <p class="col-lg-8 col-sm-12 footer-text m-0">Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
<!-- <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p> -->
<!--                     <div class="col-lg-4 col-sm-12 footer-social"> -->
<!--                         <a href="#"><i class="fa fa-facebook"></i></a> -->
<!--                         <a href="#"><i class="fa fa-twitter"></i></a> -->
<!--                         <a href="#"><i class="fa fa-dribbble"></i></a> -->
<!--                         <a href="#"><i class="fa fa-behance"></i></a> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </footer> -->
	<!--================ End footer Area  =================-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="<c:url value="/js/blog/jquery-3.2.1.min.js"/>"></script>
	<script src="<c:url value="/js/blog/popper.js"/>"></script>
	<script src="<c:url value="/js/blog/bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/js/blog/jquery.ajaxchimp.min.js"/>"></script>
	<script src="<c:url value="/js/blog/mail-script.js"/>"></script>
	<script
		src="<c:url value="/css/blog//vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"/>"></script>
	<script
		src="<c:url value="/css/blog//vendors/nice-select/js/jquery.nice-select.js"/>"></script>
	<script src="<c:url value="/js/blog/mail-script.js"/>"></script>
	<script src="<c:url value="/js/blog/stellar.js"/>"></script>
	<script
		src="<c:url value="/css/blog//vendors/lightbox/simpleLightbox.min.js"/>"></script>
	<script src="<c:url value="/js/blog/custom.js"/>"></script>
</body>
</html>