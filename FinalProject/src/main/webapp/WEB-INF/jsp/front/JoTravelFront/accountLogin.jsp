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
<title>會員登入 - JoTravel</title>
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
					會員登入<i class="bi bi-toggle-off" id="master"></i>
				</h3>
			</div>
			<div class="modal-body">
				<form class="form-login" method="post" action="/jotravel/page/logingo"
					onsubmit="return validateCode()">
					<!-- 					<img class="mb-4 rounded mx-auto d-block" src="assets/img/logo.png" -->
					<!-- 						alt="" width="310" height="250">  -->
					<label for="inputAccount" class="sr-only">Account ID</label> <input
						type="text" id="inputAccount" name="inputAccount"
						class="form-control my-2" placeholder="Account ID" required>
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" id="inputPassword" name="inputPassword"
						class="form-control" placeholder="Password" required>
					<div class="checkbox mt-1 mb-3">
						<label> <input onclick="successCallback(position)"
							type="checkbox" value="remember-me"> Remember me
						</label>
				<a href="http://localhost:8081/jotravel/page/login/updatepwd" class="nav-link dropdown-toggle">忘記密碼</a>

						
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
<!-- 				<button type="button" class="btn btn-secondary" data-dismiss="modal">離開</button> -->
				<a href='http://localhost:8081/jotravel/'
					class="btn btn-secondary"">離開</a>
				<a href='<c:out value="${contextRoot}"/>/page/login/member/insert'
					class="try-me btn btn-info">我要註冊</a>
				<button id="one" type="button" class="btn btn-secondary"
					data-dismiss="modal">一鍵輸入</button>
				<!-- 					一鍵輸入<form:select path="title" id="one" class='btn btn-info dropdown-toggle' required="required"> -->
				<!--   					<form:option value="ooo" >ooo</form:option> -->
				<!--   					<form:option value="yyy">yyy</form:option> -->
				<!--   					</form:select> -->
			</div>
		</div>
	</div>


	<!--================ start footer Area  =================-->
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
	<%--                                 <li><img src="<c:url value="/images/blog/instagram/Image-01.jpg"/>" alt=""></li> --%>
	<%--                                 <li><img src="<c:url value="/images/blog/instagram/Image-02.jpg"/>" alt=""></li> --%>
	<%--                                 <li><img src="<c:url value="/images/blog/instagram/Image-03.jpg"/>" alt=""></li> --%>
	<%--                                 <li><img src="<c:url value="/images/blog/instagram/Image-04.jpg"/>" alt=""></li> --%>
	<%--                                 <li><img src="<c:url value="/images/blog/instagram/Image-05.jpg"/>" alt=""></li> --%>
	<%--                                 <li><img src="<c:url value="/images/blog/instagram/Image-06.jpg"/>" alt=""></li> --%>
	<%--                                 <li><img src="<c:url value="/images/blog/instagram/Image-07.jpg"/>" alt=""></li> --%>
	<%--                                 <li><img src="<c:url value="/images/blog/instagram/Image-08.jpg"/>" alt=""></li> --%>
	<!--                             </ul> -->
	<!--                         </div> -->
	<!--                     </div>						 -->
	<!--                 </div> -->
	<!--                 <div class="border_line"></div> -->
	<!--                 <div class="row footer-bottom d-flex justify-content-between align-items-center"> -->
	<!--                     <p class="col-lg-8 col-sm-12 footer-text m-0">Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	<!-- Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
	<!-- <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	</p>
	-->
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
			var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b',
					'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
					'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
					'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
					'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
					'Y', 'Z');
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
			$('#inputAccount').val("k123");
			$('#inputPassword').val("k123");
			$('#inputCode').val(checkword);
		})
	</script>
<%-- 	 <jsp:include page="frontLayout/frontFooter.jsp" /> --%>
</body>
</html>