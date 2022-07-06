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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<style>
.justify-content{
flex-direction:center;
}

.context{
background-color:#fff;
border-redius:8px;
width:800px;
margin:auto;
/* Float: right */
}

.float{
Float: right
}

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

.padding{
padding-left:400px;
}



</style>
<body>
	<!--================Header Area =================-->
		 <jsp:include page="frontLayout/frontHeader.jsp" />
	
	<!--================Header Area =================-->

	<!--================Breadcrumb Area =================-->
	<section class="breadcrumb_area">
		<div class="overlay bg-parallax" data-stellar-ratio="0.8"
			data-stellar-vertical-offset="0" data-background=""></div>
		<div class="container">
			<div class="page-cover text-center">
				<h2 class="page-cover-tittle">會員</h2>
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">Account</li>
				</ol>
			</div>
		</div>
	</section>
	<!--================Breadcrumb Area =================-->
	<!--   context  -->
	<jsp:useBean id="member" class="com.group1project.model.bean.Member" scope="request" />


<form:form method="post" enctype="multipart/form-data" modelAttribute="newMember">
	<h1 style="text-align: center" class="mb-30 title_color"> 會員資訊 </h1>
<div class="right">
	<img src="${contextRoot}/page/member/photo/${newMember.account.accountId}" id="output" width="400" height="400">
	</div>
	<div class="padding">
	<div style="width: 300px;">
<%-- <form:form method="post" modelAttribute="newMember" > --%>
	<form:hidden value="" id="memberId" path="memberId"/>
		<input type="hidden" value="${newMember.account.accountId}" id="accountId" name="accountId" />
	姓名:<form:input type="text" value="" path="memberName" id="memberName" class="form-control" placeholder="姓名"/><span id="mmemberName"></span>
	<br>生日:<form:input type="date" value="" path="birthDate" id="birthDate" class="form-control" placeholder="生日"/><span id="mbirthDate"></span>
	<br>電話:<form:input type="text" value="" path="phone" id="phone" class="form-control" placeholder="電話" /><span id="mphone"></span>
	<br>email:<form:input type="text" value="" path="email" id="email" class="form-control" placeholder="email"/><span id="memail"></span>
	<br>地址:<form:input type="text" value="" path="address" id="address" class="form-control" placeholder="地址" /><span id="maddress"></span>
<%-- 	<br><form:input type="text" value="" path="gender" id="gender" class="form-control" placeholder="0=女，1=男" /><span id="mgender"></span> --%>
	<br><label class="GIFLabel">性別： </label>

        <br><div class="btn-group justify-content" role="group" aria-label="Basic radio toggle button group">
            <br><form:radiobutton path="gender" value="男性" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off"/>
           <label class="btn btn-outline-primary" for="btnradio1" style="border-radius: 5px 0px 0px 5px;">男性</label>
    
           <form:radiobutton path="gender" value="女性" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio2">女性</label>

            <form:radiobutton path="gender" value="保密" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio3">保密</label>
          </div><span id="mgender"></span><br>
		<br><input type="file" value="" class="form-control" class="float" name="file" accept="image/*" onchange="loadFile(event)"/><span id="mphotoPath"></span>
	<br>
	</div>	
	<div class="padding" style="padding-left:100px">
	<input type="button" onclick="submitForm(form)" value="修改" class="genric-btn info-border circle" width="60px" id="send"/>
	</div>
</div>
</form:form>







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
	<link href="${contextRoot}/css/sweetalert2.min.css" rel="stylesheet">

	<script>
	
	   //預覽  透過id(output)
	  var loadFile = function(event) {
	    var output = document.getElementById('output');
	    output.src = URL.createObjectURL(event.target.files[0]);
	    output.onload = function() {
	      URL.revokeObjectURL(output.src) // free memory
	    }
	  };


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
			if( $.trim(birthDate)==''){
				$('#mbirthDate').text('生日不可為空');
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
			if( $.trim(email)==''){
				$('#memail').text('email不可為空');
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
//	 		if( $.trim(gender)==''){
//	 			$('#mgender').text('性別不可為空');
//	 			Swal.fire({
//	 				  icon: 'error',
//	 				  title: 'Oops...',
//	 				  text: 'Something went wrong!'					  
//	 				})
//	 			return;
//	 		}
//	 		if( $.trim(photoPath)==''){
//	 			$('#mphotoPath').text('照片不得為空');
//	 			Swal.fire({
//	 				  icon: 'error',
//	 				  title: 'Oops...',
//	 				  text: 'Something went wrong!'					  
//	 				})
//	 			return;
//	 		}			
		});
	});
		function submitForm(form){
			  Swal.fire({
				  title: '確認修改?',
				  showDenyButton: true,
				  confirmButtonText: '儲存',
				  denyButtonText: '取消',
				}).then((result) => {
				  /* Read more about isConfirmed, isDenied below */
				  if (result.isConfirmed) {
//				    Swal.fire('Saved!', '', 'success')
				    form.submit(form);
				    
				  } else if (result.isDenied) {
				    
				    return false;
				  }
				})
		}



	</script>

</body>
</html>