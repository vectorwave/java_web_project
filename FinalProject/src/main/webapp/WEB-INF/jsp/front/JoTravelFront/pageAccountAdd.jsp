<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>

<html lang="en">
<style>
.backgroundCSS {
	background-image:
		url("http://localhost:8081/jotravel/images/blog/room4.jpg");
	background-size: cover;
}
</style>
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
</head>
<body class="backgroundCSS">
	<!--================Header Area =================-->
	<header class="header_area">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<!-- Brand and toggle get grouped for better mobile display -->
				<a class="navbar-brand logo_h" href="index.html"><img
					src="<c:url value="/images/blog/Logo.png"/>" alt=""></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse offset"
					id="navbarSupportedContent">
					<ul class="nav navbar-nav menu_nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">About
								us</a></li>
						<li class="nav-item"><a class="nav-link"
							href="accomodation.html">Accomodation</a></li>
						<li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li>
						<li class="nav-item submenu dropdown active"><a href="#"
							class="nav-link dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
							<ul class="dropdown-menu">
								<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
								<li class="nav-item"><a class="nav-link"
									href="blog-single.html">Blog Details</a></li>
							</ul></li>
							<li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/page/member/add">新增個人資料</a></li>
								<li class="nav-item"><a class="nav-link" href="blog.html">修改個人資料</a></li>
								<li class="nav-item"><a class="nav-link" href="blog-single.html">刪除帳號</a></li>
								<li class="nav-item"><a class="nav-link" href="blog-single.html">查看訂單</a></li>
								<li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/page/login">登入</a></li>
								<li class="nav-item"><a class="nav-link" href="http://localhost:8081/jotravel/page/loginout">登出</a></li>
							
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<!--           <section class="banner_area blog_banner d_flex align-items-center"> -->
	<!--             <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div> -->
	<!--             <div class="container"> -->
	<!--                 <div class="banner_content text-center"> -->
	<!--                     <h4>Dude You’re Getting <br />a Telescope</h4> -->
	<!--                     <p>There is a moment in the life of any aspiring astronomer that it is time to buy that first</p> -->
	<!--                     <a href="#" class="btn white_btn button_hover">View More</a> -->
	<!--                 </div> -->
	<!--             </div> -->
	<!--         </section> -->
	<!--================Header Area =================-->
	<br>
	<br>
	<br>

	<h1 style="text-align: center">新增帳號</h1>

	<form:form method="post"
		action="${contextRoot}/page/login/member/insert"
		modelAttribute="account">

		<form:input path="accountId" type="hidden" />

		<div class="form-group"
			style="width: 300px; margin: auto; text-align: center;">
			帳號：<form:input type="text" path="accountName" class="form-control" id="inputAccount" /><br />
				<span id="maccountName"></span>
			密碼：<form:input type="text" path="password" class="form-control" id="inputPassword" /><br />
			<span id="mpassword"></span>
			身分:<form:select path="title" class="form-select" required="required">
				<span id="mtitle"></span>
				<form:option value="會員">會員</form:option>
				<form:option value="商家">商家</form:option>
			</form:select>
			<br />
			<br />
			<br />
			<br />
			<form:input type="hidden" path="status" class="form-control" value="1" /><br /> 

			  <input type="button" onclick="submitForm(form)" id="send" value="新增" class="btn btn-lg btn-success btn-block">

			<button id="one" type="button" class="btn btn-secondary">一鍵輸入</button>
		</div>
		  </form:form>

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
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		

<!-- 	<div></div> -->
	<script type="text/javascript">
	function submitForm(form){
		  Swal.fire({
			  title: '確認新增?',
			  showDenyButton: true,
			  confirmButtonText: '儲存',
			  denyButtonText: '取消',
			}).then((result) => {
			  /* Read more about isConfirmed, isDenied below */
			  if (result.isConfirmed) {
//			    Swal.fire('Saved!', '', 'success')
			    form.submit(form);
			    
			  } else if (result.isDenied) {
			    
			    return false;
			  }
			})
	}
	  $('#one').click(function(){
			$('#inputAccount').val("ooo");
			$('#inputPassword').val("ooo");
			
		})
	  
// $(function(){

// 	$('#send').click(function(){
// 		$('form span').text('');
		
// 		var accountName = $('#accountName').val();
// 		var password = $('#password').val();
// 		var title = $('#title').val();
// 		var status = $('#status').val();
// 		var signupDate = $('#signupDate').val();
		

// 		if( $.trim(accountName)==''){
// 				$('#maccountName').text('帳號不可為空');
// 				Swal.fire({
// 					  icon: 'error',
// 					  title: 'Oops...',
// 					  text: 'Something went wrong!!!!'					  
// 					})
// 				return;
// 		}
// 		if( $.trim(password)==''){
// 			$('#mpassword').text('密碼不可為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}
// 		if( $.trim(title)==''){
// 			$('#mtitle').text('身分不可為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}
	
// 	});
// });



</script>
</body>
</html>