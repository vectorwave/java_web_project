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
                    <h2 class="page-cover-tittle f_48">新增遊記</h2>
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
								<h2 class="mb-30 title_color">新增遊記</h2>


        <!-- <form:form method="post" action="${contextRoot}/back/article/editFrontArticle" modelAttribute="article" enctype="multipart/form-data">
									  <input id=accountId name="accountId" value="${loginuser.accountId}" />
									<form:hidden path="articleId"/>
									<form:hidden path="picId"  value="${article.articleId}"/>
									
									<div class="mt-10">
<%-- 										<form:input type="text" name="first_name" placeholder="First Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required class="single-input"/> --%>
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
									</div> -->
									<form:form method="post" action="${contextRoot}/back/article/editFrontArticle" modelAttribute="article" enctype="multipart/form-data">

<form:hidden path="articleId"/>
  <input id=accountId name="accountId" value="${loginuser.accountId}" style="visibility:hidden" /><br>
<form:hidden path="picId"  value="${article.articleId}"/>

  <div >
    <!-- 文章標題 -->
    <form:input type="text" path="articleTitle"   placeholder="遊記標題" onfocus="this.placeholder = ''" onblur="this.placeholder = '遊記標題'" class="single-input"/>
  </div>
<!--   <div class="icon"><i >👉</i></div> -->
		<div class="input-group-icon mt-10">
<div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
  <div class="form-select"  >
    <!-- 文章分類 -->
    <select   id="exampleFormControlSelect1"  >
      <option  value="分享" >分享</option>
      <option  value="廣告">廣告</option>
      <option  value="閒聊">閒聊</option>
    </select>
    <form:hidden id="commentType" path="articleCategory" value="分享"/>
  </div></div>
  
  <div><br>
 
  </div>
<!--   class="form-control" -->
  <div >
 
    <!-- <form:label path="articleText" >遊記內文</form:label> -->
    <form:textarea path="articleText" class="single-textarea" placeholder="遊記內文" onfocus="this.placeholder = ''" onblur="this.placeholder = '遊記內文'"></form:textarea>
  </div><br>
  <img id="output" width="200px" height="200px"  style="background-color:white"/>
  <br><br>
   
   <label>遊記圖片：</label><div>
   <input type="file"  name="file" accept="image/*" onchange="loadFile(event)"  /></div>
  <div class="button-group-area mt-10">
 <input  type="submit" value="Submit" class="genric-btn info-border circle"/></div>
</form:form>

</form:form>
							</div>
							<div class="col-lg-4 col-md-4 mt-sm-30 element-wrap">
								<div class="blog_right_sidebar">
                            <aside class="single_sidebar_widget search_widget">
                                <div class="input-group">
                                <form action="/jotravel/front/blogIndex" method="get" >
<input  type="text" name="key" placeholder="搜尋文章名稱" id="key" ><input type="submit" id="send" value="🔍" class="searchicon"><a href="http://localhost:8081/jotravel/front/blogIndex"><input type="button" value="全部文章" ></a>  
</form>

                                </div>
                                <div class="br"></div>
                            </aside>
                            
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
				</div></div>
			<!-- End Align Area -->
      
      
      
      
      
<!--       醜醜新增文章 -->
      
      
        <!-- <div  style="text-align:center">
        <form:form method="post" action="${contextRoot}/back/article/editFrontArticle" modelAttribute="article" enctype="multipart/form-data">

<form:hidden path="articleId"/>
  <input id=accountId name="accountId" value="${loginuser.accountId}" />
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
  <!-- <div >
 
    <form:label path="articleText" >文章內文</form:label>
    <form:textarea path="articleText" class="single-textarea" style="background-color:red"></form:textarea>
  </div>
  
 <input  type="submit" value="Submit"/>
</form:form>
</div> --> 
        <!--================Blog Area =================-->
        
        <!--================ start footer Area  =================-->
        	         <jsp:include page="frontLayout/frontFooter.jsp" />

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