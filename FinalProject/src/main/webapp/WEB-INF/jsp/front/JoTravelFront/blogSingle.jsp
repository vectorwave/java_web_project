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
<title>${article.articleTitle}</title>
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
                    <h2 class="page-cover-tittle f_48">${article.articleTitle}</h2>
                    <ol class="breadcrumb">
                        <li><a href="http://localhost:8081/jotravel/">首頁</a></li>
                        <li><a href="http://localhost:8081/jotravel/front/blogIndex">遊記分享</a></li>
                        <li class="active">${article.articleTitle}</li>
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
                                <div class="post_tag" style="font-size:20px">
                                    <div align="center">
										<p style="color:#fddb64;background-color:#8e83bc;border-radius: 10px;font-weight:bold;height:25px;width: 50px;"><c:out value="${article.articleCategory}" /></p>
<!-- 											<a href="#">Food,</a> <a href="#">Technology,</a> <a href="#">Politics,</a> -->
<!-- 											<a href="#">Lifestyle</a> -->
										</div></div>
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
                                <p class="excert">${article.articleText}</p>
                                <c:if test="${article.articleCategory=='揪團'}">
<!--                                 <button type="button" class="genric-btn success circle" id="JoButton">我要揪團</button> -->
<!--                                  <div id="ClickSetCookie"> -->
                                 <input type="text" id="btnSetCookie" value=${ article.articleId } style="visibility:hidden">
<!--                                  <input type="text" id="btnSetCookie2"> -->
                                 
                                <form method="post" action="${contextRoot}/back/article/JoGroupClick"><br>
                                
                                                                <div id="ClickSetCookie" onclick="votedSetCk()"><input type="submit" value="我要揪團" class="genric-btn info circle" id="submitbtnnnn" style="font-size:18px" /></div>
                                
                                <input id="articleId" name="articleId" value="${article.articleId}" style="visibility:hidden"/>
                                
                                </form>
                                <br>
                                <p style="color: rgb(239, 67, 10);font-size: 18px;font-weight:bold;">已有  ${article.articleJogroup}  人揪團中，快來手刀加入吧!!!</p>
                                
                                </c:if>
<!--                                 <p> -->
<!--                                     Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed -->
<!--                                 </p> -->
<!--                                 <p> -->
<!--                                     Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed -->
<!--                                 </p> -->
<!-- <script > -->

<!-- </script> -->
<!-- <input type="text" id="TetstText"> -->
<!-- <input type="button" value='變更欄位為可用' onclick="ChangeDisabled(1)"> -->
<!-- <input type="button" value='變更欄位為禁用' onclick="ChangeDisabled(2)"> -->
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
<!--                         <div class="comment-form"> -->
<!--                             <h4>Leave a Reply</h4> -->
<!--                             <form> -->
<!--                                 <div class="form-group form-inline"> -->
<!--                                   <div class="form-group col-lg-6 col-md-6 name"> -->
<!--                                     <input type="text" class="form-control" id="name" placeholder="Enter Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Name'"> -->
<!--                                   </div> -->
<!--                                   <div class="form-group col-lg-6 col-md-6 email"> -->
<!--                                     <input type="email" class="form-control" id="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'"> -->
<!--                                   </div>										 -->
<!--                                 </div> -->
<!--                                 <div class="form-group"> -->
<!--                                     <input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Subject'"> -->
<!--                                 </div> -->
<!--                                 <div class="form-group"> -->
<!--                                     <textarea class="form-control mb-10" rows="5" name="message" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'" required=""></textarea> -->
<!--                                 </div> -->
<!--                                 <a href="#" class="primary-btn button_hover">Post Comment</a>	 -->
<!--                             </form> -->
<!--                         </div> -->
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
							<h4 class="widget_title">猜你喜歡</h4>
							<ul class="list_style">
								
								<li><p id="krisrock"></p></li>
								<li><p id="krisrock1"></p></li>
								<li><p id="krisrock2"></p></li>
								
<!-- 								<li><a href="#">Fashion</a></li> -->
<!-- 								<li><a href="#">Food</a></li> -->
<!-- 								<li><a href="#">Technology</a></li> -->
<!-- 								<li><a href="#">Lifestyle</a></li> -->
<!-- 								<li><a href="#">Art</a></li> -->
<!-- 								<li><a href="#">Adventure</a></li> -->
<!-- 								<li><a href="#">Food</a></li> -->
<!-- 								<li><a href="#">Lifestyle</a></li> -->
<!-- 								<li><a href="#">Adventure</a></li> -->
							</ul>
						</aside>
                        </div>
                    </div>
                </div>
            </div>
            <div style="visibility:hidden">
  <div id="floating-panel">
      <input id="latlng" type="text" value="40.714224,-73.961452" />
      <input id="submit" type="button" value="Reverse Geocode" />
    </div>

    <div id="result"></div>

    <div  id="map"></div></div>
        
        
        <!--================Blog Area =================-->
        
        <!--================ start footer Area  =================-->
        	         <jsp:include page="frontLayout/frontFooter.jsp" />
        	

	<!--================ End footer Area  =================-->
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmEBK0G5eNsuBCbrJzIYY88lee1rT_S_o&callback=initMap&v=weekly&channel=2" async></script>
	
<script type="text/javascript">


window.onload=function(){
	
		var ckisExist="votedCk"+$('#btnSetCookie').val()
		var ckext=getCookie(ckisExist);
		if (ckext!=null){
			console.log("ck6666");
			document.getElementById('submitbtnnnn').disabled=true;
		
		}else{
			console.log("ck================================")
			
		}

		
}

function votedSetCk() { 
 	var createCk=$('#btnSetCookie').val();

 	console.log(createCk);
 	setCookie("votedCk"+createCk,createCk);


} 
var lat2 = getCookie("lat1");
console.log(lat2);
var long2 = getCookie("long1");
console.log(long2);
function initMap() {
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 8,
    center: { lat: 40.714224, lng: -73.961452 },
  });
  const geocoder = new google.maps.Geocoder();
  const infowindow = new google.maps.InfoWindow();

  geocodeLatLng(geocoder, map, infowindow);

  document.getElementById("submit").addEventListener("click", () => {
    geocodeLatLng(geocoder, map, infowindow);
  });
}

function geocodeLatLng(geocoder, map, infowindow) {
  const input = document.getElementById("latlng").value;
  const latlngStr = input.split(",", 2);
  const latlng = {
		  
		  lat:parseFloat(lat2),
		  lng:parseFloat(long2)
//    lat: parseFloat(latlngStr[0]),
//    lng: parseFloat(latlngStr[1]),
////    lat:40.714224,
///   lng:-73.961452   

  };

  geocoder
    .geocode({ location: latlng })
    .then((response) => {
      if (response.results[0]) {
        map.setZoom(11);

        const marker = new google.maps.Marker({
          position: latlng,
          map: map,
        });

        infowindow.setContent(response.results[0].formatted_address);
        var kris=response.results[0].formatted_address;
        console.log(kris);
        setCookie("address",kris);
        var address1 = getCookie("address");
        var address2=address1.substring(5,8)
        console.log(address1);
        console.log(address2);
        var jkf1=address2.indexOf("台北");

        if(jkf1!=-1){
        	var el1 = document.getElementById("krisrock1");
        	el1.innerHTML = "<p><a href='http://localhost:8081/jotravel/front/blogIndex?key=台北'/>台北<p>";
        	var el2 = document.getElementById("krisrock");
        	el2.innerHTML = "<p><a href='http://localhost:8081/jotravel/front/blogIndex?key=龍洞'/>龍洞<p>";
        	var el3 = document.getElementById("krisrock2");
        	el3.innerHTML = "<p><a href='http://localhost:8081/jotravel/front/blogIndex?key=白沙灣'/>白沙灣<p>";
        }
//         document.getElementById(
//           "result"
//         ).innerHTML = `<h1 style="text-align:center;" >${response.results[0].formatted_address}</h1>`;
        
        infowindow.open(map, marker);
      } else {
        window.alert("No results found");
      }
    })
    .catch((e) => window.alert("Geocoder failed due to: " + e));
}


function getCookie(name){
  	var arr,reg = new RegExp("(^|)" + name + "=([^;]*)(;|$)");
  	if(arr = document.cookie.match(reg))
  		return unescape(arr[2]);
  	else
  		return null;
  }
  
  function setCookie(name,value){
  	document.cookie = name + "=" +escape(value) +";path=/";
  }


</script>
<!-- <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script> -->
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