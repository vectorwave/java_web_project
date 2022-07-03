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
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
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
                    <h2 class="page-cover-tittle f_48">新增遊記中....</h2>
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
      <!-- Start Sample Area -->
			
			
			<!-- End Button -->
			<!-- Start Align Area -->
			<div class="whole-wrap">
				<div class="container">
					
					<div class="section-top-border">
						<div class="row">
							<div class="col-lg-8 col-md-8">
								<h3 class="mb-30 title_color">新增遊記</h3>
								<form action="#">
									<div class="mt-10">
										<input type="text" name="first_name" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required class="single-input">
									</div>
									<div class="mt-10">
										<input type="text" name="last_name" placeholder="Last Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" required class="single-input">
									</div>
									<div class="mt-10">
										<input type="text" name="last_name" placeholder="Last Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" required class="single-input">
									</div>
									<div class="mt-10">
										<input type="email" name="EMAIL" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" required class="single-input">
									</div>
									<div class="input-group-icon mt-10">
										<div class="icon"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
										<input type="text" name="address" placeholder="Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'" required class="single-input">
									</div>
									<div class="input-group-icon mt-10">
										<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
										<div class="form-select" id="default-select">
											<select>
												<option value="1">City</option>
												<option value="1">Dhaka</option>
												<option value="1">Dilli</option>
												<option value="1">Newyork</option>
												<option value="1">Islamabad</option>
											</select>
										</div>
									</div>
									<div class="input-group-icon mt-10">
										<div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
										<div class="form-select" id="default-select2">
											<select>
												<option value="1">Country</option>
												<option value="1">Bangladesh</option>
												<option value="1">India</option>
												<option value="1">England</option>
												<option value="1">Srilanka</option>
											</select>
										</div>
									</div>
									
									<div class="mt-10">
										<textarea class="single-textarea" placeholder="Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Message'" required></textarea>
									</div>
									<div class="mt-10">
										<input type="text" name="first_name" placeholder="Primary color" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Primary color'" required class="single-input-primary">
									</div>
									<div class="mt-10">
										<input type="text" name="first_name" placeholder="Accent color" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Accent color'" required class="single-input-accent">
									</div>
									<div class="mt-10">
										<input type="text" name="first_name" placeholder="Secondary color" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Secondary color'" required class="single-input-secondary">
									</div>
								</form>
							</div>
							<div class="col-lg-3 col-md-4 mt-sm-30 element-wrap">
								<div class="single-element-widget">
									<h3 class="mb-30 title_color">Switches</h3>
									<div class="switch-wrap d-flex justify-content-between">
										<p>01. Sample Switch</p>
										<div class="primary-switch">
											<input type="checkbox" id="default-switch">
											<label for="default-switch"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>02. Primary Color Switch</p>
										<div class="primary-switch">
											<input type="checkbox" id="primary-switch" checked>
											<label for="primary-switch"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>03. Confirm Color Switch</p>
										<div class="confirm-switch">
											<input type="checkbox" id="confirm-switch" checked>
											<label for="confirm-switch"></label>
										</div>
									</div>
								</div>
								<div class="single-element-widget">
									<h3 class="mb-30 title_color">Selectboxes</h3>
									<div class="default-select" id="default-select">
										<select>
											<option value="1">English</option>
											<option value="1">Spanish</option>
											<option value="1">Arabic</option>
											<option value="1">Portuguise</option>
											<option value="1">Bengali</option>
										</select>
									</div>
								</div>
								<div class="single-element-widget">
									<h3 class="mb-30 title_color">Checkboxes</h3>
									<div class="switch-wrap d-flex justify-content-between">
										<p>01. Sample Checkbox</p>
										<div class="primary-checkbox">
											<input type="checkbox" id="default-checkbox">
											<label for="default-checkbox"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>02. Primary Color Checkbox</p>
										<div class="primary-checkbox">
											<input type="checkbox" id="primary-checkbox" checked>
											<label for="primary-checkbox"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>03. Confirm Color Checkbox</p>
										<div class="confirm-checkbox">
											<input type="checkbox" id="confirm-checkbox">
											<label for="confirm-checkbox"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>04. Disabled Checkbox</p>
										<div class="disabled-checkbox">
											<input type="checkbox" id="disabled-checkbox" disabled>
											<label for="disabled-checkbox"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>05. Disabled Checkbox active</p>
										<div class="disabled-checkbox">
											<input type="checkbox" id="disabled-checkbox-active" checked disabled>
											<label for="disabled-checkbox-active"></label>
										</div>
									</div>
								</div>
								<div class="single-element-widget">
									<h3 class="mb-30 title_color">Radios</h3>
									<div class="switch-wrap d-flex justify-content-between">
										<p>01. Sample radio</p>
										<div class="primary-radio">
											<input type="checkbox" id="default-radio">
											<label for="default-radio"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>02. Primary Color radio</p>
										<div class="primary-radio">
											<input type="checkbox" id="primary-radio" checked>
											<label for="primary-radio"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>03. Confirm Color radio</p>
										<div class="confirm-radio">
											<input type="checkbox" id="confirm-radio" checked>
											<label for="confirm-radio"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>04. Disabled radio</p>
										<div class="disabled-radio">
											<input type="checkbox" id="disabled-radio" disabled>
											<label for="disabled-radio"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>05. Disabled radio active</p>
										<div class="disabled-radio">
											<input type="checkbox" id="disabled-radio-active" checked disabled>
											<label for="disabled-radio-active"></label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Align Area -->
      
      
      
      
      
      
      
      
        <div  style="text-align:center">
        <form:form method="post" action="${contextRoot}/back/article/editFrontArticle" modelAttribute="article" enctype="multipart/form-data">

<form:hidden path="articleId"/>
  <input id=accountId name="accountId" value="1" />
<form:hidden path="picId"  value="${article.articleId}"/>

  <div >
    文章標題
    <form:input type="text" path="articleTitle"   placeholder="請輸入文章....."/>
  </div>
  
  <div >
    文章分類
    <select   id="exampleFormControlSelect1"  style="text-align:center">
      <option  value="分享">分享</option>
      <option  value="廣告">廣告</option>
      <option  value="閒聊">閒聊</option>
    </select>
    <form:hidden id="commentType" path="articleCategory" value="分享"/>
  </div>
  <img id="output" width="200px" height="200px"  style="background-color:white"/>
  <br><br>
   文章圖片：<br><div><input type="file"  name="file" accept="image/*" onchange="loadFile(event)"/><br/></div>
  <div><br>
 
  </div>
<!--   class="form-control" -->
  <div >
 
    <form:label path="articleText" >文章內文</form:label>
    <form:textarea path="articleText" ></form:textarea>
  </div>
  
 <input  type="submit" value="Submit"/>
</form:form>
</div>
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
<script>
$(function(){
	
	$('#exampleFormControlSelect1').change(function(){
		var type =$('#exampleFormControlSelect1').val();
		
		$('#commentType').val(type);
		console.log(type);
		
	})
	
});

var loadFile = function(event) {
  var output = document.getElementById('output');
  output.src = URL.createObjectURL(event.target.files[0]);
  output.onload = function() {
    URL.revokeObjectURL(output.src) // free memory
  }
};
</script>
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