
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<h1 style="text-align: center"> 新增帳號 </h1>

<form:form method="post" action="${contextRoot}/login/member/insert" modelAttribute="account">

  <form:input path="accountId" type="hidden" />
  
  <div class="form-group" style="width: 300px;margin: auto;text-align: center;">
  帳號： <form:input type="text" path="accountName" class="form-control"/><br/>
  密碼：<form:input type="text" path="password" class="form-control"/><br/>
  身分： <form:input type="text" path="title" class="form-control" /><br/>
  帳號狀態： <form:input type="text" path="status" class="form-control" /><br/>
 
  <input type="submit" name="submit" value="新增" class="btn btn-lg btn-success btn-block">
  </div>	
  
  
  </form:form>
 
  <div> 
  </div>
<jsp:include page="layout/footer.jsp" />