<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<jsp:include page="layout/header.jsp" />
<meta name="author" content="http://www.softwhy.com/" />
	<title>aa</title>
	<h1>Hello! ${loginuser.accountName}</h1>
	
	

	<jsp:include page="layout/footer.jsp" />