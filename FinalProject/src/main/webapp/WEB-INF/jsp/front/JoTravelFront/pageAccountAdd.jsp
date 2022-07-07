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
		url("http://localhost:8081/jotravel/images/blog/about_banner.jpg");
	background-size: cover;
}
</style>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="image/favicon.png" type="image/png">
<title>註冊帳號 - JoTravel</title>
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
#containerBox {
	margin-top: 80px;
	padding:80px;
}

#inputContainer {
	padding:30px;
	width:500px;
	background-color: rgb(255,255,255,0.7);
	border-radius: 50px;
}

#btnContainer {
	font-size: 20px;
margin-top: 50px;
}

#formContent {
	padding-top:30px;
	padding-bottom: 30px;
}


label {
	float:left;
	font-size: 20px;
	font-weight: 600;
}

#myVideo {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%; 
  min-height: 100%;
  z-index:0;
}

</style>

</head>
<body class="backgroundCSS">

	<!--================Header Area =================-->
		 <jsp:include page="frontLayout/frontHeader.jsp" />
	
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



<div id="containerBox" align="center">

	<div id="inputContainer">

		<h1 style="text-align: center">註冊帳號</h1>

		<form:form method="post"
			action="${contextRoot}/page/login/member/insert"
			modelAttribute="account">

			<form:input path="accountId" type="hidden" />

			<div class="form-group"
				style="width: 300px; margin: auto; text-align: center;" id="formContent">

				<tr class="trCtrl">
				<td><label>帳號：</label></td>
				<td><form:input type="text" path="accountName" class="form-control"
					id="inputAccount" /></td>
				</tr> </br>

				<tr class="trCtrl">
					<td><span id="maccountName"></span><label> 密碼：</label></td>
					<td><form:input type="password" path="password" class="form-control"
					id="inputPassword" /></td>
				</tr> </br> 

				<tr class="trCtrl">
				<td><span id="mpassword"></span><label> 身分:</label></td>
				<td><form:select path="title" class="form-select" required="required">
					<span id="mtitle"></span>
					<form:option value="會員">會員</form:option>
					<form:option value="商家">商家</form:option>
				</form:select></td> </br> 
			</tr>

			</div>
		</table>

		<div id="btnContainer" style="text-align: center;">

			<form:input type="hidden" path="status" class="form-control"
			value="1" />

			<input type="button" class="genric-btn primary circle" onclick="submitForm(form)" id="send" value="新增" />

			<input type="button" class="genric-btn warning circle"  id="one" value="一鍵輸入" />

		</div>

		</form:form>
	</div>

</div>

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
			$('#inputAccount').val("k123");
			$('#inputPassword').val("k123");
			
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
//		}
	
// 	});
// });



</script>
</body>
</html>