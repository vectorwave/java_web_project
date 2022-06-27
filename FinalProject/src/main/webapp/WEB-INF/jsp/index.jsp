<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<jsp:include page="layout/header.jsp" />
<div class="row">


	<script>
		$(function() {
			var myName = "${sessionScope.login_user.name}";
			var nickName = " " + myName.substr(0);
			$("h1").append(nickName);
		})
	</script>
	<title>aa</title>

	</head>
	<body>
	
	

		<div class="form-group col-md-6">
			<form method="post" id="profileupdateform1"
				enctype="multipart/form-data">
				<div id="MemberDivPadding">
					<h2>修改密碼</h2>

					<input type="hidden" id="updateNo" name="updateNo"
						value="${Account.accountId}"> <br> <br>
					<div>
						<input type="password" class="form-control" id="updatePwd"
							name="updatePwd" placeholder="新密碼" required style="width: 300px;">
						<div class=""></div>
					</div>

					<br>

					<div>
						<input type="password" class="form-control" id="updatePwd1"
							name="updatePwd1" placeholder="確認新密碼" required
							style="width: 300px;">
						<div class=""></div>
					</div>
					<br>

				</div>
				<br>
				<div>
					<button type="button" class="btn btn-primary" id="changePwd"
						disabled style="margin-left: 50px;">儲存</button>
					&nbsp;&nbsp;&nbsp;<input type="button" class="btn btn-primary"
						onclick="history.back()" value="返回會員專區"></input>
				</div>

			</form>
		</div>
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
					<form class="form-login" method="post" action="logingo">
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
						<div class="g-recaptcha my-3" id="recaptcha"></div>
						<button class="btn btn-lg btn-info btn-block" id="userLoginButton"
							type="submit" >登入</button>
						<p class="mt-2 mb-3 text-muted text-center">&copy; 2022-2022</p>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">離開</button>
					<a href="javascript:;" class="try-me btn btn-info" id="masterMode1">我要註冊</a>
				</div>
			</div>
		</div>




	</body>


	<jsp:include page="layout/footer.jsp" />