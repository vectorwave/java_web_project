<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
<title>新增會員資料</title>
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

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<style>
.justify-content {
	/* justify-content: center; */
	align-items: center;
}
.right{
 float:right;
  padding-right:250px;
}

.border{
border-radius: 999em; 
width:600px;
}

/* body{ */
/* background-color:#FFFAF2; */
/* } */

.context {
	background-color: #fff;
	border-redius: 8px;
	width: 1000px;
	margin: auto;
	/* Float: right */
}

.padding{
padding-left:400px;
}


</style>
<body>
	<!--================Header Area =================-->
	<!-- 	<header class="header_area"> -->
	<!-- 		<div class="container"> -->
	<!-- 			<nav class="navbar navbar-expand-lg navbar-light"> -->
	<!-- 				Brand and toggle get grouped for better mobile display -->
	<!-- 				<a class="navbar-brand logo_h" href="index.html"><img -->
	<%-- 					src="<c:url value="/images/blog/Logo.png"/>" alt=""></a> --%>
	<%-- 				                    <a class="navbar-brand logo_h" href="index.html"><img src="<c:url value="/image/Logo.png"> alt=""></a> --%>
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
	<!-- 						<li class="nav-item active"><a class="nav-link" -->
	<!-- 							href="gallery.html">Gallery</a></li> -->
	<!-- 						<li class="nav-item submenu dropdown"><a href="#" -->
	<!-- 							class="nav-link dropdown-toggle" data-toggle="dropdown" -->
	<!-- 							role="button" aria-haspopup="true" aria-expanded="false">Blog</a> -->
	<!-- 							<ul class="dropdown-menu"> -->
	<!-- 								<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li> -->
	<!-- 								<li class="nav-item"><a class="nav-link" -->
	<!-- 									href="blog-single.html">Blog Details</a></li> -->
	<!-- 							</ul></li> -->
	<!-- 						<li class="nav-item"><a class="nav-link" href="elements.html">Elemests</a></li> -->
	<!-- 						<li class="nav-item submenu dropdown"><a href="#" -->
	<!-- 							class="nav-link dropdown-toggle" data-toggle="dropdown" -->
	<!-- 							role="button" aria-haspopup="true" aria-expanded="false">會員</a> -->
	<!-- 							<ul class="dropdown-menu"> -->
	<!-- 								<li class="nav-item"><a class="nav-link" -->
	<!-- 									href="http://localhost:8081/jotravel/page/member/add">新增個人資料</a></li> -->
	<!-- 								<li class="nav-item"><a class="nav-link" -->
	<%-- 									href="http://localhost:8081/jotravel/page/member/edit?id=${loginuser.accountId}">修改個人資料</a></li> --%>
	<!-- <!-- 								<li class="nav-item"><a class="nav-link" -->

	<!-- <!-- 									href="blog-single.html">刪除帳號</a></li> -->
	
	<!-- 								<li class="nav-item"><a class="nav-link" -->
	<!-- 									href="blog-single.html">查看訂單</a></li> -->
	<!-- 								<li class="nav-item"><a class="nav-link" -->
	<!-- 									href="http://localhost:8081/jotravel/page/login">登入</a></li> -->
	<!-- 								<li class="nav-item"><a class="nav-link" -->
	<!-- 									href="http://localhost:8081/jotravel/page/loginout">登出</a></li> -->

	<!-- 							</ul></li> -->
	<!-- 					</ul> -->
	<!-- 				</div> -->
	<!-- 			</nav> -->
	<!-- 		</div> -->
	<!-- 	</header> -->
	<jsp:include page="frontLayout/frontHeader.jsp" />
	<!--================Header Area =================-->

	<!--================Breadcrumb Area =================-->
	<section class="breadcrumb_area">
		<div class="overlay bg-parallax" data-stellar-ratio="0.8"
			data-stellar-vertical-offset="0" data-background=""></div>
		<div class="container" style="text-align: center;">
			<div class="page-cover">
				<h2 class="page-cover-tittle">Account</h2>
<!-- 				<ol class="breadcrumb"> -->
<!-- 					<li>Home</li> -->
<!-- 					<li class="active">Member</li> -->
<!-- 				</ol> -->
			</div>
		</div>
	</section>
	<!--================Breadcrumb Area =================-->
	<!--   context  -->
<div>
	<div class="whole-wrap">
	<h1 style="text-align: center" class="mb-30 title_color">新增個人資料</h1>
		<form:form method="post" enctype="multipart/form-data"
			action="${contextRoot}/page/member/add" modelAttribute="member">

				<div class="right">
					<img id="output" width="400" height="400" /><br /> <br /> <br />
				</div>


			<form:input path="memberId" type="hidden" />
			<input type="hidden" id="accountId" name="accountId"
				value="${loginuser.accountId}" />

<div class="padding">

			<div class="form-group"
				style="width: 300px; text-align: center;">
				姓名：
				<form:input type="text" path="memberName" class="form-control"
					id="memberName" />
				<br /> <span id="mmemberName"></span> 地址：
				<form:input type="text" path="address" class="form-control"
					id="address" />
				<br /> <span id="maddress"></span> 生日：
				<form:input type="date" path="birthDate" class="form-control"
					id="birthdate" />
				<br /> <span id="mbirthDate"></span> email：
				<form:input type="text" path="email" class="form-control" id="email" />
				<br /> <span id="memail"></span>
				<%--   性別：<form:input type="redio" path="gender" class="form-control" placeholder="0=女，1=男"/><br/> --%>
				<label class="GIFLabel">性別： </label><br>

				<div class="btn-group justify-content">
					<form:radiobutton path="gender" value="男性" class="btn-check"
 						name="btnradio" id="btnradio1" autocomplete="off" /> 
					<label class="btn btn-outline-primary" name="btnradio" for="btnradio1"
						style="border-radius: 5px 0px 0px 5px;">男性</label>

					<form:radiobutton path="gender" value="女性" class="btn-check"
						name="btnradio" id="btnradio2" autocomplete="off" />
					<label class="btn btn-outline-primary" name="btnradio" for="btnradio2">女性</label>

					<form:radiobutton path="gender" value="保密" class="btn-check"
						name="btnradio" id="btnradio3" autocomplete="off" />
					<label class="btn btn-outline-primary" name="btnradio" for="btnradio3">保密</label>
				</div>
			
				<br>電話：
				<form:input type="text" path="phone" class="form-control" id="phone" />
				<br /> <span id="mphone"></span> 會員圖片：<input type="file"
					class="form-control" name="file" accept="image/*"
					onchange="loadFile(event)" />
					

				<!--   <input type="button" id="one"  value="一鍵輸入"> -->
			</div>
			<div class="padding">
				<button id="one"  type="button" class="btn btn-secondary">一鍵輸入</button>

				<input type="button" onclick="submitForm(form)" value="新增"
					class="genric-btn info-border circle" id="send">
					</div>
			</div>

		</form:form>
		<br>
	</div>
</div>






	<!--================ start footer Area  =================-->
	<jsp:include page="frontLayout/frontFooter.jsp" />
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
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript"
		src="${contextRoot}/js/sweetalert2.all.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script>
	
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };
  $('#one').click(function(){
		$('#memberName').val("杜同學");
		$('#address').val("台北市復興南路一段390巷");
		$('#birthdate').val("1998-03-25");
		$('#email').val("karen1111@yahoo.com.tw");
		$('#btnradio1').prop("checked",true);
		$('#phone').val("0912123123");
		
	})
  $(function(){
		$('#send').click(function(){
			
			$('form span').text('');
			
			var memberId = $('#memberId').val();
			var memberName = $('#memberName').val();
			var birthDate = $('#birthDate').val();
			var phone = $('#phone').val();
			var email = $('#email').val();
			var address = $('#address').val();
			var gender = $('#gender').val();
			var photoPath = $('#photoPath').val();

			if( $.trim(memberName)==''){
					$('#mmemberName').text('姓名不可為空');
					Swal.fire({
						  icon: 'error',
						  title: 'Oops...',
						  text: 'Something went wrong!'					  
						})
					return;
			}
			if( $.trim(address)==''){
				$('#maddress').text('地址不可為空');
				Swal.fire({
					  icon: 'error',
					  title: 'Oops...',
					  text: 'Something went wrong!'					  
					})
				return;
			}		
// 			if( $.trim(birthDate)==''){
// 				$('#mbirthDate').text('生日不可為空');
// 				Swal.fire({
// 					  icon: 'error',
// 					  title: 'Oops...',
// 					  text: 'Something went wrong!'					  
// 					})
// 				return;
// 			}
			if( $.trim(email)==''){
				$('#memail').text('email不可為空');
				Swal.fire({
					  icon: 'error',
					  title: 'Oops...',
					  text: 'Something went wrong!'					  
					})
				return;
			}
			if( $.trim(phone)==''){
				$('#mphone').text('電話不可為空');
				Swal.fire({
					  icon: 'error',
					  title: 'Oops...',
					  text: 'Something went wrong!'					  
					})
				return;
			}
			
		
		});
	});
  
  
  function submitForm(form){
	  let aid = $('#accountId').val()
	  console.log(form)
	  $.ajax({
		  type: "get",
		  url: "http://localhost:8081/jotravel/page/member/searchAccountId/" + aid,
		  
		  success: function(response){
			  console.log(response.result)
			  if(response.result == "true"){
				  Swal.fire({
					  title: '確認新增?',
					  showDenyButton: true,
					  confirmButtonText: '儲存',
					  denyButtonText: '取消',
					}).then((result) => {
					  /* Read more about isConfirmed, isDenied below */
					  if (result.isConfirmed) {
//					    Swal.fire('Saved!', '', 'success')
					    form.submit(form);
					  } else if (result.isDenied) {
					    return false;
					  }
					})
			  }else{
				  Swal.fire({
					  title: '已新增過相關會員資料，請至個人資料做修改',
					  showDenyButton: true,
					  confirmButtonText: 'OK',
					  denyButtonText: '取消',
					}).then((result) => {
					  /* Read more about isConfirmed, isDenied below */
					  if (result.isConfirmed) {
					    return true;
					  } else if (result.isDenied) {
					    return false;
					  }
					})
			  }
			  
		  },	
		  error: function(xhr,ajaxOptions,throwError){
			  console.log('error')
		  }
	  })
	  
	  
	  
	  
// 	  Swal.fire({
// 		  title: '確認新增?',
// 		  showDenyButton: true,
// 		  confirmButtonText: '儲存',
// 		  denyButtonText: '取消',
// 		}).then((result) => {
// 		  /* Read more about isConfirmed, isDenied below */
// 		  if (result.isConfirmed) {
// //		    Swal.fire('Saved!', '', 'success')
// 		    form.submit(form);
		    
// 		  } else if (result.isDenied) {
		    
// 		    return false;
// 		  }
// 		})
}
 
	</script>

</body>
</html>