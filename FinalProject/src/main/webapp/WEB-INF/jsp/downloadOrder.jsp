<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>

<h1 align="center" id="download" class="glyphicon glyphicon-download" 
style="cursor:pointer;" title="Click to Download"></h1>


<section id="posts-landing"></section>




<jsp:include page="layout/footer.jsp" />