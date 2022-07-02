<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<br/>

<div class="container" style="color:black;"> 

<div class="row justify-content-center">

<div class="col-9">

<div class="card">

  <h5 class="card-header" style="background-color:#BBFFBB">請評論產品</h5>
  <div class="card-body">
  
  <form:form class="form" method="post" action="${contextRoot}/back/productcomment/addgo" modelAttribute="pdComment">
  
  <div class="form-group">
  
  會員編號：<input  name="accountId" class="form-control" type="text" value="${loginuser.accountId}" readonly="readonly"/><br/>
  產品編號：<input  name="productId" type="text" class="form-control" value="${pid}" readonly="readonly" /><br/>
 
  評論訊息:<form:textarea path="productComment" class="form-control"/><br/>
  評論等級:<br>
    
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="5">
  <label class="form-check-label" for="inlineRadio1">非常滿意</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="4">
  <label class="form-check-label" for="inlineRadio2">滿意</label>
</div>
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="3">
  <label class="form-check-label" for="inlineRadio3">普通</label>
</div>
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4" value="2">
  <label class="form-check-label" for="inlineRadio4">不滿意</label>
</div>
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5" value="1">
  <label class="form-check-label" for="inlineRadio5">非常不滿意</label>
</div>

  </div>
  
  <input type="submit" name="submit" value="新增訊息">
  
  </form:form>
  </div>
</div>

</div>

</div>







</div> 
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> 
<jsp:include page="layout/footer.jsp" />