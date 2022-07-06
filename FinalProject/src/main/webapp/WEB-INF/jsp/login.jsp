<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
</head>


<body style="background-color: #8E8E8E">

	<!-- 頂部橫條列 -->
	<nav
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#"
			style="font-size: 24px;" onclick="return false">JoTravel 管理平台</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-toggle="collapse" data-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!--   <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search"> -->
<!-- 		<a class="nav-link" href="http://localhost:8081/jotravel/loginout"> -->
<!-- 			<button type="button" class="btn btn-secondary" -->
<!-- 				style="margin-right: 20px;">登出</button> -->
<!-- 		</a> -->

	</nav>

	<style>
.v_code {
	width: 600px;
	margin: 0 auto;
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
</head>
<body>

	<div class="modal-dialog modal-dialog-centered modal-sm"
		role="document" style="max-width: 335px">
		<div class="modal-content">
			<div class="modal-header">
				<h3 class="modal-title" id="LoginTitle">
					管理員登入<i class="bi bi-toggle-off" id="master"></i>
				</h3>
				
			</div>
			<div class="modal-body">
				<form class="form-login" method="post" action="back/logingo"
					onsubmit="return validateCode()">
					<img class="mb-4 rounded mx-auto d-block" src="assets/img/logo.png"
						alt="" width="310" height="250"> <label for="inputAccount"
						class="sr-only">Account ID</label> <input type="text"
						id="inputAccount" name="inputAccount" class="form-control my-2"
						placeholder="Account ID" required> <label
						for="inputPassword" class="sr-only">Password</label> <input
						type="password" id="inputPassword" name="inputPassword"
						class="form-control" placeholder="Password" required>
					<div class="checkbox mt-1 mb-3">
						<label> <input onclick="successCallback(position)"
							type="checkbox" value="remember-me"> Remember me
						</label>
					</div>
					<div class="v_code">
						<div class="code_show">
							<span class="code" id="checkCode"></span> <a id="linkbt">看不清換一張</a>
						</div>
						<div class="input_code">
							<label for="inputCode">驗證碼：</label> <input type="text"
								id="inputCode" /> <span id="text_show"></span>
						</div>
						<!-- 							<input id="Button1" type="button" value="確定" /> -->
					</div>
					<div class="g-recaptcha my-3" id="recaptcha"></div>
					<!-- 						<form onsubmit="return validateCode()"> -->
					<button class="btn btn-lg btn-info btn-block" id="Button1"
						type="submit">登入</button>
					<!-- 						</form> -->

					<p class="mt-2 mb-3 text-muted text-center">&copy; 2022-2022</p>
				</form>
			</div>
			<div class="modal-footer">
<%-- 				<a href='<c:out value="${contextRoot}"/>/login/insert' --%>
<!-- 					class="try-me btn btn-info">我要註冊</a> -->
				<button id="one" type="button" class="btn btn-secondary"
					data-dismiss="modal">一鍵輸入</button>
				<!-- 					一鍵輸入<form:select path="title" id="one" class='btn btn-info dropdown-toggle' required="required"> -->
				<!--   					<form:option value="ooo" >ooo</form:option> -->
				<!--   					<form:option value="yyy">yyy</form:option> -->
				<!--   					</form:select> -->
			</div>
		</div>
	</div>





<script src="<c:url value="/js/blog/jquery-3.2.1.min.js"/>"></script>

<script src="<c:url value="/js/blog/jquery.ajaxchimp.min.js"/>"></script>
<script
	src="<c:url value="/css/blog//vendors/nice-select/js/jquery.nice-select.js"/>"></script>
<script type="text/javascript">

// window.onload=navigator.geolocation.getCurrentPosition(successCallback);  
// function successCallback(position){  
//     var lat1 = position.coords.latitude;  
//     var long1 = position.coords.longitude;  
//     console.log(lat1);
//     console.log(long1);
//     setCookie("lat1",lat1);
//     setCookie("long1",long1);
    
//     document.getElementById(
//           "result"
//         ).innerHTML = `<a href="geolat.jsp">666666</a>`;
// //         latlong?${lat1}+${long1}
//    }
   
// function setCookie(name,value){
// 	document.cookie = name + "=" +escape(value) +";path=/";
// }

// function getCookie(name){
// 	var arr,reg = new RegExp("(^|)" + name + "=([^;]*)(;|$)");
// 	if(arr = document.cookie.match(reg))
// 		return unescape(arr[2]);
// 	else
// 		return null;
// }
// //设置cookie值
// var a = "xxx";
// setCookie("a",a);  

	var code;
	function createCode() {
		code = "";
		var codeLength = 6; //驗證碼的長度
		var checkCode = document.getElementById("checkCode");
		var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c',
				'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
				'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A',
				'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
				'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
		for (var index = 0; index < codeLength; index++) {
			var charNum = Math.floor(Math.random() * 52);
			code += codeChars[charNum];
		}
		if (checkCode) {
			checkCode.className = "code";
			checkCode.innerHTML = code;
		}
	}
	function validateCode() {
		var inputCode = document.getElementById("inputCode").value;
		var textShow = document.getElementById("text_show")
		if (inputCode.length <= 0) {
			textShow.innerHTML = "請輸入驗證碼";
			textShow.style.color = "red";
			return false;
		} else if (inputCode.toUpperCase() != code.toUpperCase()) {
			textShow.innerHTML = "您輸入的驗證碼有誤";
			textShow.style.color = "red";
			createCode();
			return false;
		} else {
			textShow.innerHTML = "驗證碼正確";
			textShow.style.color = "green";
			return true;
		}
	}
	function checkCode() {
		var btn = document.getElementById("Button1");
		btn.onclick = function() {
			validateCode();
		}
	}
	window.onload = function() {
		checkCode();
		createCode();
		document.getElementById("checkCode").onclick = function() {
			createCode()
		}
		linkbt.onclick = function() {
			createCode()
		}
		inputCode.onclick = function() {
			validateCode();
		}
	}
	// 		$(function() {
	// 			$('#send').click(function() {
	// 				$('#nameresult').text('');
	// 				$('#pwdresult').text('');
	// 				$('#loginresult').text('');
	// 				var useraccount = $('#account').val();
	// 				var userpassword = $('#password').val();
	// 				if ($.trim(useraccount) == '') {
	// 					$('#nameresult').text('帳號不可為空');
	// 					return;
	// 				}
	// 				if ($.trim(userpassword) == '') {
	// 					$('#pwdresult').text('密碼不可為空');
	// 					return;
	// 				}

	// 				//     console.log(useraccount);	
	// 				//     console.log(userpassword);	

	// 				var params = {
	// 					"useraccount" : '' + useraccount,
	// 					"userpassword" : '' + userpassword
	// 				};

	// 				var data = JSON.stringify(params);
	// 				console.log(data)
	// 				$.ajax({
	// 					url : 'login',
	// 					method : 'post',
	// 					contentType : 'application/json',
	// 					data : data,
	// 					success : function(res) {
	// 						console.log(res);
	// 						if (res) {
	// 							window.location = "/homework/index";
	// 						} else {
	// 							$('#loginresult').text('帳號密碼錯誤');
	// 						}
	// 					}

	// 				});

	// 			});
	// 		});

	$('#one').click(function() {
		let checkword = $('#checkCode').text();
		console.log(checkword)
		$('#inputAccount').val("root");
		$('#inputPassword').val("root");
		$('#inputCode').val(checkword);
	})


</script>
</body>
<jsp:include page="layout/footer.jsp" />