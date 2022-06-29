<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<jsp:include page="layout/header.jsp" />
<meta name="author" content="http://www.softwhy.com/" />
	<title>aa</title>
	<style>
          .v_code {
            width: 600px;
            margin: 0 auto;
          }
          .v_code > input {
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
						會員登入<i class="bi bi-toggle-off" id="master"></i>
					</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form class="form-login" method="post" action="logingo" onsubmit="return validateCode()">
						<img class="mb-4 rounded mx-auto d-block"
							src="assets/img/logo.png" alt="" width="310" height="250">
						<label for="inputAccount" class="sr-only">Account ID</label> <input
							type="text" id="inputAccount" name="inputAccount"
							class="form-control my-2" placeholder="Account ID" required>
						<label for="inputPassword" class="sr-only">Password</label> <input
							type="password" id="inputPassword" name="inputPassword"
							class="form-control" placeholder="Password" required>
						<div class="checkbox mt-1 mb-3">
							<label> <input type="checkbox" value="remember-me">
								Remember me
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
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">離開</button>
					<a href='<c:out value="${contextRoot}"/>/login/insert'
						class="try-me btn btn-info">我要註冊</a>
				</div>
			</div>
		</div>




	</body>
	<script type="text/javascript">
	 var code;
     function createCode() {
         code = "";
         var codeLength = 6; //驗證碼的長度
         var checkCode = document.getElementById("checkCode");
         var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
             'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
             'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
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
     function checkCode(){
         var btn = document.getElementById("Button1");
         btn.onclick=function(){
           validateCode();
         }
     }
     window.onload = function () {
         checkCode();
         createCode();
         document.getElementById("checkCode").onclick = function () { createCode() }
         linkbt.onclick = function () { createCode() }
         inputCode.onclick = function () { validateCode(); }
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
	</script>

	<jsp:include page="layout/footer.jsp" />