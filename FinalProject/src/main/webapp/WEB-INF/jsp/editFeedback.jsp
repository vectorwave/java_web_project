<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<h1> 編輯資料 </h1>

<form:form method="post" modelAttribute="newPd">

  <form:input path="feedbackId" type="hidden" />
  
  
  
  <div class="form-group">
  回報單編號：<form:input type="hidden" path="feedbackId"/><br/>
  會員ID： <form:input type="text" path="accountId" class="form-control"/><br/>
  回應：<form:input type="text" path="feedback" class="form-control"/><br/>
  會員Email：<form:input type="text" path="feedbackEmail" class="form-control"/><br/>
  回報日期：<form:input type="date" path="startDate" class="form-control"/><br/>
  更新時間：<form:input type="date" path="updatedDate" class="form-control"/><br/>
  狀態：<form:input type="text" path="status" class="form-control"/><br/>
  
  </div>
  
  <input type="submit" name="submit" value="更新">
  
  </form:form>
<jsp:include page="layout/footer.jsp" />