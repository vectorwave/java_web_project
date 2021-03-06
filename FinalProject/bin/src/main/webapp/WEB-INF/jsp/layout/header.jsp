<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet" >
<title>JoTravel 管理平台</title>

<link rel="stylesheet" href="${contextRoot}/jQueryconfirm/jquery-confirm.css">
<script type="text/javascript" src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${contextRoot}/jQueryconfirm/jquery-confirm.js"></script>

<!-- <link rel="stylesheet" href="${contextRoot}/css/bootstrap.min.css"> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="${contextRoot}/js/bootstrap.bundle.min.js"></script>

<link href="${contextRoot}/css/dashboard.css" rel="stylesheet">
<link href="${contextRoot}/css/leftMenuBar.css" rel="stylesheet">
<link rel="stylesheet" href="${contextRoot}/css/ManagementPage.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body style="background-color:rgb(4, 17, 37) ">

<!-- 頂部橫條列 -->  
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="#" style="font-size: 24px;" onclick="return false">JoTravel 管理平台</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
<!--   <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search"> -->
      <a class="nav-link" href="/MiddleProject/pages/loginin.jsp"></a><button type="button" class="btn btn-secondary" style="margin-right:20px;">登出</button></a>

</nav>


<!-- 左側邊攔 -->  
<div class="container-fluid">

  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block sidebar collapse" style="width:200px;background-color:rgb(31, 41, 56);">
      

      <div class="dropdown" STYLE="margin-top: 30px;">
        <a href="/jotravel"><button class="dropbtn">
          <span class="material-icons">home</span>回到首頁</button></a>
      </div>

      <div class="dropdown">
        <button class="dropbtn"><span class="material-icons">people</span>會員管理</button>
        <div class="dropdown-content">
          <a href="#">所有會員</a>
          <a href="#">會員分級</a>
        </div>
      </div>

      <div class="dropdown">
        <button class="dropbtn"><span class="material-icons">content_paste</span>訂單管理</button>
        <div class="dropdown-content">
          <a href="#">所有訂單</a>
          <a href="#">匯出訂單</a>
        </div>
      </div>

      <div class="dropdown">
        <button class="dropbtn"><span class="material-icons">local_grocery_store</span>商品管理</button>
        <div class="dropdown-content">
          <a href="#">所有商品</a>
          <a href="#">活動商品</a>
          <a href="#">商品分類</a>
        </div>
      </div>

      <div class="dropdown">
        <button class="dropbtn"><span class="material-icons">hiking</span>商家管理</button>
        <div class="dropdown-content">
          <a href="/jotravel/guidemanagement">所有商家</a>
          <a href="#">商家權限</a>
          <a href="/jotravel/guidemanagement/add">新增商家</a>
        </div>
      </div>

      <div class="dropdown">
        <button class="dropbtn"><span class="material-icons">rate_review</span>論壇管理</button>
        <div class="dropdown-content">
          <a href="#">文章管理</a>
        </div>
      </div>

      <div class="dropdown">
        <button class="dropbtn"><span class="material-icons">chat</span>客服管理</button>
        <div class="dropdown-content">
          <a href="#">未回覆問題</a>
          <a href="#">所有問題</a>
          <a href="#">即時回回覆</a>
        </div>
      </div>

      <div class="dropdown">
        <button class="dropbtn"><span class="material-icons">live_tv</span>廣告管理</button>
        <div class="dropdown-content">
          <a href="#">新增廣告</a>
          <a href="#">所有廣告</a>
        </div>
      </div>
    </nav>
    
     <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
     
