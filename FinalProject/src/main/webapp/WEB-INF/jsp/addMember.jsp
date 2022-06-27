
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<h1 style="text-align: center"> 新增會員資料 </h1>

<form:form method="post" enctype="multipart/form-data" action="${contextRoot}/member/add" modelAttribute="member">

  <form:input path="memberId" type="hidden" />
  <input id=accountId name="accountId" value="${loginuser.accountId}" />
  <div class="form-group" style="width: 300px;margin: auto;text-align: center;">
  姓名： <form:input type="text" path="memberName" class="form-control"/><br/>
  地址：<form:input type="text" path="address" class="form-control"/><br/>
  生日： <form:input type="date" path="birthDate" class="form-control" /><br/>
  email：<form:input type="text" path="email" class="form-control"/><br/>
  性別：<form:input type="redio" path="gender" class="form-control" placeholder="0=女，1=男"/><br/>
  電話：<form:input type="text" path="phone" class="form-control" /><br/>
  會員圖片：<input type="file" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><br/>
 
  <img id="output" width="300" height="300"/><br/><br/><br/>
  
  <input type="submit" name="submit" value="新增" class="btn btn-lg btn-success btn-block">
  </div>	
  
  
  </form:form>
  
  
<script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };
</script> 
<jsp:include page="layout/footer.jsp" />