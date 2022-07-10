<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="image/favicon.png" type="image/png">
<title>Jotravel 訂單頁面</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href='<c:url value="/css/bootstrap.min.css"/>'>
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
<script type="text/javascript"
	src="${contextRoot}/js/sweetalert2.all.min.js"></script>
<script type="text/javascript" src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
<link href="${contextRoot}/css/sweetalert2.min.css" rel="stylesheet">
<script type="text/javascript" src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
<script src="${contextRoot}/js/xlsx.mini.min.js"></script>
<script src="${contextRoot}/js/FileSaver.js"></script>
<script src="${contextRoot}/js/downloadOrder.js"></script>
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>
<link href="${contextRoot}/css/sweetalert2.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../front/JoTravelFront/frontLayout/frontHeader.jsp" />
 <section class="breadcrumb_area">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">以下是您的表單紀錄，請妥善保存</h2>
                     </div>
            </div>
              </section> 

<div id="GIFormContainer1">
	<div align="center">
		<table>
			<thead class="thead-dark">
				<tr>

					<th scope="col">Id
					<td><input type="text" name="id" value="${csResult.id}"
						disabled style="text-align: center; width: 250px"> <input
						type="hidden" name="id" value="${csResult.id}">
				<tr />
				
				<tr>
					<th scope="col">ServiceInfo
					<td><input type="text" name="serviceInfo"
						value="${csResult.serviceInfo}" disabled
						style="text-align: center; width: 250px"> <input
						type="hidden" name="serviceInfo" value="${csResult.serviceInfo}">
				<tr />

				<tr>
					<th scope="col">Name
					<td><input type="text" name="name" value="${csResult.name}"
						disabled style="text-align: center; width: 250px"> <input
						type="hidden" name="name" value="${csResult.name}">
				<tr />

				<tr>
					<th scope="col">Phone
					<td><input type="text" name="phone" value="${csResult.phone}"
						disabled style="text-align: center; width: 250px"> <input
						type="hidden" name="phone" value="${csResult.phone}">
				<tr />
				<tr>
					<th scope="col">Email
					<td><input type="text" name="email" value="${csResult.email}"
						disabled style="text-align: center; width: 250px"> <input
						type="hidden" name="email" value="${csResult.email}">
				<tr />
				<tr>
					<th scope="col">Description
					<td><input type="text" name="description"
						value="${csResult.description}" disabled
						style="text-align: center; width: 250px"> <input
						type="hidden" name="description" value="${csResult.description}">
				<tr />
				<tr>
					<th scope="col">PreferedContactTime
					<td><input type="text" name="preferedContactTime"
						value="${csResult.preferedContactTime}" disabled
						style="text-align: center; width: 250px"> <input
						type="hidden" name="preferedContactTime"
						value="${csResult.preferedContactTime}">
				<tr />
				<tr>
					<th scope="col">ProcessStatus
					<td><input type="text" name="processStatus"
						value="${csResult.processStatus}" disabled
						style="text-align: center; width: 250px"> <input
						type="hidden" name="processStatus"
						value="${csResult.processStatus}">
				<tr>
					<th scope="col">Remark
					<td><input type="text" name="remark"
						value="${csResult.remark}" disabled
						style="text-align: center; width: 250px"> <input
						type="hidden" name="remark" value="${csResult.remark}">
				<tr />
				<tr>
					<th scope="col">CreatedAt
					<td><input type="text" name="createdAt"
						value="${csResult.createdAt}" disabled
						style="text-align: center; width: 250px"> <input
						type="hidden" name="createdAt" value="${csResult.createdAt}">
				<tr />
			</thead>
		</table>
	</div>
</div>
</div>

<jsp:include page="../front/JoTravelFront/frontLayout/frontFooter.jsp" />