<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!doctype html>

<html lang="en">
<style>
.backgroundCSS {
	background-image:
		url("http://localhost:8081/jotravel/images/blog/about_banner.jpg");
	background-size: cover;
}

.v_code {
	width: 600px;
	margin: 0 auto;
}

.right {
	margin: auto;
	/* 	Float: right */
}

.v_code>input {
	width: 60px;
	height: 36px;
	margin-top: 10px;
}

.code_show {
	overflow: hidden;
}

.code_show span {
	display: block;
	float: left;
	margin-bottom: 10px;
}

.code_show a {
	display: block;
	float: left;
	margin-top: 10px;
	margin-left: 10px;
}

.code {
	font-style: italic;
	background-color: #f5f5f5;
	color: blue;
	font-size: 30px;
	letter-spacing: 3px;
	font-weight: bolder;
	float: left;
	cursor: pointer;
	padding: 0 5px;
	text-align: center;
}

#inputCode {
	width: 100px;
	height: 30px;
}

a {
	text-decoration: none;
	font-size: 12px;
	color: #288bc4;
	cursor: pointer;
}

a:hover {
	text-decoration: underline;
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
	<br>
	<br>
	<br>
	<div class="modal-dialog modal-dialog-centered modal-sm right"
		role="document" style="max-width: 335px">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="LoginTitle">
					修改密碼<i class="bi bi-toggle-off" id="master"></i>
				</h3>
			</div>
			<div class="modal-body">
				<form class="form-login" method="post" action="/page/login/edit"
					onsubmit="return validateCode()" id='pwdform'>
					<!-- 					<img class="mb-4 rounded mx-auto d-block" src="assets/img/logo.png" -->
					<!-- 						alt="" width="310" height="250">  -->
					<label for="inputaccount" class="sr-only">帳號</label> <input
						type="text" id="inputaccount" name="inputaccount"
						class="form-control" placeholder="帳號" required>
					<label for="inputcode" class="sr-only">驗證碼</label> <input
						type="text" id="inputcode" name="inputcode"
						class="form-control my-2" placeholder="驗證碼">
						<label for="inputPassword" class="sr-only">修改密碼</label> <input
						type="hidden" id="inputPassword" name="inputPassword"
						class="form-control" placeholder="修改密碼">
						<label for="checkpassword" class="sr-only">確認修改密碼</label> <input
						type="hidden" id="checkpassword" name="checkpassword"
						class="form-control" placeholder="確認修改密碼">
					<div class="checkbox mt-1 mb-3">
						
					
					<input type="hidden" value="確認修改" style="float:right; margin:10px;" id="submitpassword" class="btn btn-secondary"
					data-dismiss="modal">
			</div>
				</form>
			
				<button  type="button" onclick="updatePwd()" class="btn btn-secondary" id="submitcode"
					data-dismiss="modal">傳送驗證碼</button>
				<!-- 					一鍵輸入<form:select path="title" id="one" class='btn btn-info dropdown-toggle' required="required"> -->
				<!--   					<form:option value="ooo" >ooo</form:option> -->
				<!--   					<form:option value="yyy">yyy</form:option> -->
				<!--   					</form:select> -->
			</div>
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
	<script type="text/javascript">
	var ranNum = '';
	
	function updatePwd(){
		let aid = $('#inputaccount').val();
		$.ajax({
			  type: "get",
			  url: "/jotravel/sendEmail/" + aid,
			  dataType: "json", 
			  success: function(response){
				  console.log(response)
				  if(response.msg == "已寄送相關資料至會員E-Mail"){
					  ranNum = response.ran;
					  $('#submitcode').text('確認驗證碼')
					  $('#submitcode').attr('onclick','checkcode')				  
				  }else{
					  alert(response.msg);
				  }
				  
			  },	
			  error: function(xhr,ajaxOptions,throwError){
				  console.log('error')
			  }
		  })
	}
	
	function checkcode(){
		let chkNum = $('#inputcode').val();
		if(chkNum == ranNum){
			  $('#inputPassword').attr('type','password');
			  $('#checkpassword').attr('type','password');
			  $('#inputcode').attr('type','hidden');
			  $('#submitpassword').attr('type','button');
			  $('#submitpassword').attr('onclick','chkcpwd');
		}else{
			alert("驗證碼錯誤");
		}
	}
	
	function chkcpwd(){
		let num1 = $('#inputPassword').val();
		let num2 = $('#checkpassword').val();
		if(num1 == num2){
			$('#pwdform').submit();
		}else{
			alert('error');
		}
	}

		
	</script>
<%-- 	 <jsp:include page="frontLayout/frontFooter.jsp" /> --%>
</body>
</html>