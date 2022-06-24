
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<h1> 新增產品 </h1>

<form:form method="post" enctype="multipart/form-data" action="${contextRoot}/back/feedback" modelAttribute="newfd" >

  <form:input path="feedbackId" type="hidden" />
  <form:input path="accountId" type="hidden" />

  
  <div class="form-group">
  信箱：<form:input type="text" path="feedbackEmail" class="form-control" required="required" placeholder="" /><br/>
  回應： <form:input type="text" path="feedback" class="form-control" placeholder="請輸入" required="required"/><br/>

  
  </div>
  
  <input type="submit" name="submit" value="更新">
  
  </form:form>
  
  <div> ${msg.okMsg}
  </div>
  

  
 <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> 
<jsp:include page="layout/footer.jsp" />