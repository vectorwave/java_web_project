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
<title>JoTravel論壇</title>
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
	
<!-- 	<header class="header_area"> -->
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

	<!--================Banner Area =================-->
	<section class="banner_area blog_banner d_flex align-items-center">
		<div class="overlay bg-parallax" data-stellar-ratio="0.9"
			data-stellar-vertical-offset="0" data-background=""></div>
		<div class="container">
			<div class="banner_content text-center">
				<h2>
					JoTravel論壇
				</h2><br>
				<h3>記錄美好生活</h3>
				<a href="#" class="btn white_btn button_hover">View More</a>
			</div>
		</div>
	</section>
	<!--================Banner Area =================-->

	<!--================Blog Categorie Area =================-->
	<section class="blog_categorie_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="categories_post">
						<img
							src="<c:url value="/images/blog/blog/cat-post/Taipei.jpg"/>"
							alt="post">
						<div class="categories_details">
							<div class="categories_text">
								<a href="http://localhost:8081/jotravel/front/blogIndex?key=台北"><h5>台北</h5></a>
								<div class="border_line"></div>
								<p>Taipei Nightlife</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="categories_post">
						<img
							src="<c:url value="/images/blog/blog/cat-post/Tainan.jpg"/>"
							alt="post">
						<div class="categories_details">
							<div class="categories_text">
								<a href="http://localhost:8081/jotravel/front/blogIndex?key=台南"><h5>台南</h5></a>
								<div class="border_line"></div>
								<p>History Culture Nightmarket</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="categories_post">
						<img src="<c:url value="/images/blog/blog/cat-post/Kenting.jpg"/>"
					width=400px	height=240px	alt="post">
						<div class="categories_details">
							<div class="categories_text">
								<a href="http://localhost:8081/jotravel/front/blogIndex?key=墾丁"><h5>墾丁</h5></a>
								<div class="border_line"></div>
								<p>Sea ,Surfing ,Tropical vibe</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Blog Categorie Area =================-->

	<!--================Blog Area =================-->
	<section class="blog_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="blog_left_sidebar">
						<article class="row blog_item">
							<c:forEach var="value" items="${page.content}">
								<div class="col-md-3">

									<div class="blog_info text-right">
										<div class="post_tag" style="font-size:20px">
											<div align="center">
										<p style="color:#fddb64;background-color:#8e83bc;border-radius: 5px;font-weight:bold;height:25px;width: 50px;"><c:out value="${value.articleCategory}" /></p>
<!-- 											<a href="#">Food,</a> <a href="#">Technology,</a> <a href="#">Politics,</a> -->
<!-- 											<a href="#">Lifestyle</a> -->
										</div></div>
										<ul class="blog_meta list_style">
											<li><c:out value="${value.account.accountName}" /><nobr>   </nobr><i class="lnr lnr-user"></i></li>
											<li><fmt:formatDate pattern="yyyy/MM/dd HH:mm " value="${value.articleDate}" /><i
													class="lnr lnr-calendar-full"></i></a></li>
<!-- 											<li><a href="#">1.2M Views<i class="lnr lnr-eye"></i></a></li> -->
<!-- 											<li><a href="#">06 Comments<i class="lnr lnr-bubble"></i></a></li> -->
										</ul>
									</div>
								</div>
								<div class="col-md-9">
									<div class="blog_post">
										<img
											src="${contextRoot}/back/article/photo/${value.articleId}"
											width="500px" height="300px">

										<%--                                         <img src="<c:url value="/images/blog/blog/main-blog/m-blog-1.jpg"/>" alt=""> --%>
										<div class="blog_details">
											<a href="${contextRoot}/front/blogPage/detail?id=${value.articleId}"><h2>
													<c:out value="${value.articleTitle}" />
												</h2></a>
											<p>
												<c:out value="${value.articleText}" />
											</p>
											<a href="${contextRoot}/front/blogPage/detail?id=${value.articleId}" class="view_btn button_hover">View More </a>
										</div>
									</div>
								</div>
							</c:forEach>
						</article>
						
						<nav class="blog-pagination justify-content-center d-flex">
							<ul class="pagination">
							
							
							
									<c:choose>
										<c:when test="${page.number==0}">
											
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="${contextRoot}/front/blogIndex?p=${page.number}"
												aria-label="Previous"> <span aria-hidden="true">
														<span class="lnr lnr-chevron-left"></span>
												</span>
											</a></li>
										</c:otherwise>
									</c:choose>
								<c:forEach begin="1" end="${page.totalPages}" var="p">


									<li class="page-item"><a class="page-link"
										href="${contextRoot}/front/blogIndex?p=${p}"><c:out
												value="${p}" /></a></li>
								</c:forEach>
			
									<c:choose>
										<c:when test="${page.number==page.totalPages-1}">
										
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link"
												href="${contextRoot}/front/blogIndex?p=${page.number+2}"
												aria-label="Next"> <span aria-hidden="true"> <span
														class="lnr lnr-chevron-right"></span>
												</span>
											</a></li>

										</c:otherwise>


									</c:choose>






							</ul>
						</nav>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog_right_sidebar">
						<aside class="single_sidebar_widget search_widget">
							
							<div class="input-group">
							<form action="/jotravel/front/blogIndex" method="get" >
<input  type="text" name="key" placeholder="搜尋文章名稱" id="key" ><input type="submit" id="send" value="🔍" class="searchicon"><a href="http://localhost:8081/jotravel/front/blogIndex"><input type="button" value="全部文章" ></a>  
</form>
<!-- 								<input type="text" class="form-control" -->
<!-- 									placeholder="Search Posts"> <span -->
<!-- 									class="input-group-btn"> -->
<!-- 									<button class="btn btn-default" type="button"> -->
<!-- 										<i class="lnr lnr-magnifier"></i> -->
<!-- 									</button> -->
<!-- 								</span> -->
							</div>
							<!-- /input-group -->
							<div class="br"></div>
						</aside>
<!-- 						<aside class="single_sidebar_widget author_widget"> -->
<!-- 							<img class="author_img rounded-circle" -->
<%-- 								src="<c:url value="/images/blog/blog/author.png"/>" alt=""> --%>
<!-- 							<h4>Charlie Barber</h4> -->
<!-- 							<p>Senior blog writer</p> -->
<!-- 							<div class="social_icon"> -->
<!-- 								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i -->
<!-- 									class="fa fa-twitter"></i></a> <a href="#"><i -->
<!-- 									class="fa fa-github"></i></a> <a href="#"><i -->
<!-- 									class="fa fa-behance"></i></a> -->
<!-- 							</div> -->
<!-- 							<p>Boot camps have its supporters andit sdetractors. Some -->
<!-- 								people do not understand why you should have to spend money on -->
<!-- 								boot camp when you can get. Boot camps have itssuppor ters -->
<!-- 								andits detractors.</p> -->
<!-- 							<div class="br"></div> -->
<!-- 						</aside> -->
<!-- 						<aside class="single_sidebar_widget popular_post_widget"> -->
<!-- 							<h3 class="widget_title">Popular Posts</h3> -->
<!-- 							<div class="media post_item"> -->
<%-- 								<img src="<c:url value="/images/blog/blog/post1.jpg"/>" --%>
<!-- 									alt="post"> -->
<!-- 								<div class="media-body"> -->
<!-- 									<a href="blog-details.html"><h3>Space The Final -->
<!-- 											Frontier</h3></a> -->
<!-- 									<p>02 Hours ago</p> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="media post_item"> -->
<%-- 								<img src="<c:url value="/images/blog/blog/post2.jpg"/>" --%>
<!-- 									alt="post"> -->
<!-- 								<div class="media-body"> -->
<!-- 									<a href="blog-details.html"><h3>The Amazing Hubble</h3></a> -->
<!-- 									<p>02 Hours ago</p> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="media post_item"> -->
<%-- 								<img src="<c:url value="/images/blog/blog/post3.jpg"/>" --%>
<!-- 									alt="post"> -->
<!-- 								<div class="media-body"> -->
<!-- 									<a href="blog-details.html"><h3>Astronomy Or Astrology</h3></a> -->
<!-- 									<p>03 Hours ago</p> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="media post_item"> -->
<%-- 								<img src="<c:url value="/images/blog/blog/post4.jpg"/>" --%>
<!-- 									alt="post"> -->
<!-- 								<div class="media-body"> -->
<!-- 									<a href="blog-details.html"><h3>Asteroids telescope</h3></a> -->
<!-- 									<p>01 Hours ago</p> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="br"></div> -->
<!-- 						</aside> -->
<!-- 						<aside class="single_sidebar_widget ads_widget"> -->
<!-- 							<a href="#"><img class="img-fluid" -->
<%-- 								src="<c:url value="/images/blog/blog/add.jpg"/>" alt=""></a> --%>
<!-- 							<div class="br"></div> -->
<!-- 						</aside> -->
<!-- 						<aside class="single_sidebar_widget post_category_widget"> -->
<!-- 							<h4 class="widget_title">Post Catgories</h4> -->
<!-- 							<ul class="list_style cat-list"> -->
<!-- 								<li><a href="#" class="d-flex justify-content-between"> -->
<!-- 										<p>Technology</p> -->
<!-- 										<p>37</p> -->
<!-- 								</a></li> -->
<!-- 								<li><a href="#" class="d-flex justify-content-between"> -->
<!-- 										<p>Lifestyle</p> -->
<!-- 										<p>24</p> -->
<!-- 								</a></li> -->
<!-- 								<li><a href="#" class="d-flex justify-content-between"> -->
<!-- 										<p>Fashion</p> -->
<!-- 										<p>59</p> -->
<!-- 								</a></li> -->
<!-- 								<li><a href="#" class="d-flex justify-content-between"> -->
<!-- 										<p>Art</p> -->
<!-- 										<p>29</p> -->
<!-- 								</a></li> -->
<!-- 								<li><a href="#" class="d-flex justify-content-between"> -->
<!-- 										<p>Food</p> -->
<!-- 										<p>15</p> -->
<!-- 								</a></li> -->
<!-- 								<li><a href="#" class="d-flex justify-content-between"> -->
<!-- 										<p>Architecture</p> -->
<!-- 										<p>09</p> -->
<!-- 								</a></li> -->
<!-- 								<li><a href="#" class="d-flex justify-content-between"> -->
<!-- 										<p>Adventure</p> -->
<!-- 										<p>44</p> -->
<!-- 								</a></li> -->
<!-- 							</ul> -->
<!-- 							<div class="br"></div> -->
<!-- 						</aside> -->
<!-- 						<aside class="single-sidebar-widget newsletter_widget"> -->
<!-- 							<h4 class="widget_title">Newsletter</h4> -->
<!-- 							<p>Here, I focus on a range of items and features that we use -->
<!-- 								in life without giving them a second thought.</p> -->
<!-- 							<div class="form-group d-flex flex-row"> -->
<!-- 								<div class="input-group"> -->
<!-- 									<div class="input-group-prepend"> -->
<!-- 										<div class="input-group-text"> -->
<!-- 											<i class="fa fa-envelope" aria-hidden="true"></i> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 									<input type="text" class="form-control" -->
<!-- 										id="inlineFormInputGroup" placeholder="Enter email" -->
<!-- 										onfocus="this.placeholder = ''" -->
<!-- 										onblur="this.placeholder = 'Enter email'"> -->
<!-- 								</div> -->
<!-- 								<a href="#" class="bbtns">Subcribe</a> -->
<!-- 							</div> -->
<!-- 							<p class="text-bottom">You can unsubscribe at any time</p> -->
<!-- 							<div class="br"></div> -->
<!-- 						</aside> -->
						<aside class="single-sidebar-widget tag_cloud_widget">
							<h4 class="widget_title">熱門標籤</h4>
							<ul class="list_style">
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=台北'>台北</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=台南'>台南</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=高雄'>高雄</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=澎湖'>澎湖</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=綠島'>綠島</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=一日遊'>一日遊</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=三日遊'>三日遊</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=立槳體驗'>立槳體驗</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=水肺潛水'>水肺潛水</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=自由潛水'>自由潛水</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=澎湖花火節'>澎湖花火節</a></li>
								<li><a href='http://localhost:8081/jotravel/front/blogIndex?key=台東熱氣球'>台東熱氣球</a></li>
							</ul>
						</aside>
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
	</section>
	<div style="visibility:hidden">
  <div id="floating-panel">
      <input id="latlng" type="text" value="40.714224,-73.961452" />
      <input id="submit" type="button" value="Reverse Geocode" />
    </div>

    <div id="result"></div>

    <div style="visibility:hidden" id="map"></div></div>
	<!--================Blog Area =================-->


	<!--================ start footer Area  =================-->
	<jsp:include page="frontLayout/frontFooter.jsp" />
<!-- 	<footer class="footer-area section_gap"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="row"> -->
<!-- 				<div class="col-lg-3  col-md-6 col-sm-6"> -->
<!-- 					<div class="single-footer-widget"> -->
<!-- 						<h6 class="footer_title">About Agency</h6> -->
<!-- 						<p>The world has become so fast paced that people don’t want -->
<!-- 							to stand by reading a page of information, they would much rather -->
<!-- 							look at a presentation and understand the message. It has come to -->
<!-- 							a point</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-lg-3 col-md-6 col-sm-6"> -->
<!-- 					<div class="single-footer-widget"> -->
<!-- 						<h6 class="footer_title">Navigation Links</h6> -->
<!-- 						<div class="row"> -->
<!-- 							<div class="col-4"> -->
<!-- 								<ul class="list_style"> -->
<!-- 									<li><a href="#">Home</a></li> -->
<!-- 									<li><a href="#">Feature</a></li> -->
<!-- 									<li><a href="#">Services</a></li> -->
<!-- 									<li><a href="#">Portfolio</a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 							<div class="col-4"> -->
<!-- 								<ul class="list_style"> -->
<!-- 									<li><a href="#">Team</a></li> -->
<!-- 									<li><a href="#">Pricing</a></li> -->
<!-- 									<li><a href="#">Blog</a></li> -->
<!-- 									<li><a href="#">Contact</a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-lg-3 col-md-6 col-sm-6"> -->
<!-- 					<div class="single-footer-widget"> -->
<!-- 						<h6 class="footer_title">Newsletter</h6> -->
<!-- 						<p>For business professionals caught between high OEM price -->
<!-- 							and mediocre print and graphic output,</p> -->
<!-- 						<div id="mc_embed_signup"> -->
<!-- 							<form target="_blank" -->
<!-- 								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" -->
<!-- 								method="get" class="subscribe_form relative"> -->
<!-- 								<div class="input-group d-flex flex-row"> -->
<!-- 									<input name="EMAIL" placeholder="Email Address" -->
<!-- 										onfocus="this.placeholder = ''" -->
<!-- 										onblur="this.placeholder = 'Email Address '" required="" -->
<!-- 										type="email"> -->
<!-- 									<button class="btn sub-btn"> -->
<!-- 										<span class="lnr lnr-location"></span> -->
<!-- 									</button> -->
<!-- 								</div> -->
<!-- 								<div class="mt-10 info"></div> -->
<!-- 							</form> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="col-lg-3 col-md-6 col-sm-6"> -->
<!-- 					<div class="single-footer-widget instafeed"> -->
<!-- 						<h6 class="footer_title">InstaFeed</h6> -->
<!-- 						<ul class="list_style instafeed d-flex flex-wrap"> -->
<!-- 							<li><img -->
<%-- 								src="<c:url value="/images/blog/instagram/Image-01.jpg"/>" --%>
<!-- 								alt=""></li> -->
<!-- 							<li><img -->
<%-- 								src="<c:url value="/images/blog/instagram/Image-02.jpg"/>" --%>
<!-- 								alt=""></li> -->
<!-- 							<li><img -->
<%-- 								src="<c:url value="/images/blog/instagram/Image-03.jpg"/>" --%>
<!-- 								alt=""></li> -->
<!-- 							<li><img -->
<%-- 								src="<c:url value="/images/blog/instagram/Image-04.jpg"/>" --%>
<!-- 								alt=""></li> -->
<!-- 							<li><img -->
<%-- 								src="<c:url value="/images/blog/instagram/Image-05.jpg"/>" --%>
<!-- 								alt=""></li> -->
<!-- 							<li><img -->
<%-- 								src="<c:url value="/images/blog/instagram/Image-06.jpg"/>" --%>
<!-- 								alt=""></li> -->
<!-- 							<li><img -->
<%-- 								src="<c:url value="/images/blog/instagram/Image-07.jpg"/>" --%>
<!-- 								alt=""></li> -->
<!-- 							<li><img -->
<%-- 								src="<c:url value="/images/blog/instagram/Image-08.jpg"/>" --%>
<!-- 								alt=""></li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="border_line"></div> -->
<!-- 			<div -->
<!-- 				class="row footer-bottom d-flex justify-content-between align-items-center"> -->
<!-- 				<p class="col-lg-8 col-sm-12 footer-text m-0"> -->
<!-- 					Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!-- 					Copyright &copy; -->
<!-- 					<script> -->

<!-- 					</script> -->
<!-- 					All rights reserved | This template is made with <i -->
<!-- 						class="fa fa-heart-o" aria-hidden="true"></i> by <a -->
<!-- 						href="https://colorlib.com" target="_blank">Colorlib</a> -->
<!-- 					Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
<!-- 				</p> -->
<!-- 				<div class="col-lg-4 col-sm-12 footer-social"> -->
<!-- 					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i -->
<!-- 						class="fa fa-twitter"></i></a> <a href="#"><i -->
<!-- 						class="fa fa-dribbble"></i></a> <a href="#"><i -->
<!-- 						class="fa fa-behance"></i></a> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</footer> -->
	<!--================ End footer Area  =================-->
	<script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmEBK0G5eNsuBCbrJzIYY88lee1rT_S_o&callback=initMap&v=weekly&channel=2"
      async
    ></script>
	<script type="text/javascript">
	

	document.cookie = 'cookie3=value3';

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
//	      lat: parseFloat(latlngStr[0]),
	  //    lng: parseFloat(latlngStr[1]),
////	      lat:40.714224,
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
//	           document.getElementById(
//	             "result"
//	           ).innerHTML = `<h1 style="text-align:center;" >${response.results[0].formatted_address}</h1>`;
	          
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
<!-- <script type="text/javascript"> -->



<!-- </script> -->
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