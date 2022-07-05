<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<title>JoTravel 管理平台</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">


<!-- 引入JS -->

<script type="text/javascript"
	src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="${contextRoot}/jQueryconfirm/jquery-confirm.js"></script>

<!-- 引入sweetalert2 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript"
	src="${contextRoot}/js/sweetalert2.all.min.js"></script>
<link href="${contextRoot}/css/sweetalert2.min.css" rel="stylesheet">


<!-- 引入CSS -->
<link rel="stylesheet"
	href="${contextRoot}/jQueryconfirm/jquery-confirm.css">
<script type="text/javascript"
	src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link href="${contextRoot}/css/dashboard.css" rel="stylesheet">
<link href="${contextRoot}/css/leftMenuBar.css" rel="stylesheet">
<link rel="stylesheet" href="${contextRoot}/css/ManagementPage.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- <link rel="stylesheet" href="${contextRoot}/css/bootstrap.min.css"> -->
</head>


<body style="background-color: rgb(243, 243, 245)">


	<!-- 頂部橫條列 -->
	<nav
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="http://localhost:8081/jotravel/index"
			style="font-size: 24px;" onclick="return false">JoTravel 管理平台</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-toggle="collapse" data-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!--   <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search"> -->


			<c:if test="${sessionScope.loginuser.accountId == null}">
		<a class="nav-link" href="http://localhost:8081/jotravel/login">
			<button type="button" class="btn btn-secondary"
				style="margin-right: 20px; position: relative;">登入</button>
		</a>
									
									</c:if>
			<c:if test="${sessionScope.loginuser.accountId != null}">
		<a class="nav-link" href="http://localhost:8081/jotravel/back/loginout"> 
			<button type="button" class="btn btn-secondary"
				style="position: absolute; right: 90px; top: 11px;">登出</button></a>
									</c:if>

	</nav>


	<!-- 左側邊攔 -->
	<div class="container-fluid">

		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block sidebar collapse"
				style="width: 200px; background-color: rgb(31, 41, 56);">


				<div class="dropdown" STYLE="margin-top: 30px;">
					<a href="/jotravel/index"><button class="dropbtn">
							<span class="material-icons">home</span>回到首頁
						</button></a>
				</div>

				<div class="dropdown">
					<button class="dropbtn">
						<span class="material-icons">people</span>會員管理
					</button>
					<div class="dropdown-content">
						<a class="dropdown-item" href="${contextRoot}/back/member/add">新增會員資料</a>
						<a class="dropdown-item" href="${contextRoot}/back/member/findall">所有會員資訊</a>
						<a class="dropdown-item" href="${contextRoot}/back/login/insert">新增帳號</a>
						<a class="dropdown-item" href="${contextRoot}/back/login/findall">所有帳號</a>
						<a class="dropdown-item"
							href="${contextRoot}/login.password.update">修改密碼</a> <a
							class="dropdown-item" href="#">會員分級</a>
					</div>
				</div>

				<div class="dropdown">
					<button class="dropbtn">
						<span class="material-icons">hiking</span>商家管理
					</button>
					<div class="dropdown-content">
						<a href="${contextRoot}/guidemanagement">所有商家</a> <a
							href="${contextRoot}/guidemanagement/addguide">新增商家</a> <a
							href="#">權限管理</a>
					</div>
				</div>

				<div class="dropdown">
					<button class="dropbtn">
						<span class="material-icons">local_grocery_store</span>商品管理
					</button>
					<div class="dropdown-content">
						<a class="dropdown-item" href="${contextRoot}/back/allProduct">所有商品</a>
						<a class="dropdown-item" href="${contextRoot}/back/addProduct">新增商品</a>
						<a class="dropdown-item" href="${contextRoot}/back/ProductComment/all">商品評論</a>
					</div>
				</div>

				<div class="dropdown">
					<button class="dropbtn">
						<span class="material-icons">hiking</span>商家管理
					</button>
					<div class="dropdown-content">
						<a href="/jotravel/guidemanagement">所有商家</a> <a href="#">商家權限</a>
						<a href="/jotravel/guidemanagement/addguide">新增商家</a>
					</div>
				</div>

				<div class="dropdown">
					<button class="dropbtn">
						<span class="material-icons">rate_review</span>論壇管理
					</button>
					<div class="dropdown-content">
						<a href="${contextRoot}/article/add">新增文章</a> <a
							href="${contextRoot}/article/all">文章管理</a>
					</div>
				</div>

				<div class="dropdown">
					<button class="dropbtn">
						<span class="material-icons">chat</span>客服管理
					</button>
					<div class="dropdown-content">
						<a class="dropdown-item"
							href="${contextRoot}/staff/message/selectAll">所有案件</a> 
							<a class="dropdown-item"
							href="${contextRoot}/staff/message/selectAllByProcessStatus">未處理案件</a> 
					</div>
				</div>

				<div class="dropdown">
					<button class="dropbtn">
						<span class="material-icons">live_tv</span>廣告管理
					</button>
					<div class="dropdown-content">
						<a href="#">新增廣告</a> <a href="#">所有廣告</a>
					</div>
				</div>
			</nav>

			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">