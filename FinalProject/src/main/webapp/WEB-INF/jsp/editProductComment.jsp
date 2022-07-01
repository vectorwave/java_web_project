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
  
  <form:form class="form" method="post" action="${contextRoot}/back/productcomment/editProductComment" modelAttribute="newPdC">
  
  <div class="form-group">
  <form:input path="prouctCommentId" type="hidden" />
  會員編號：<input  name="accountId" class="form-control" type="text" value="${newPdC.account.accountId}" readonly="readonly"/><br/>
  產品編號：<input  name="productId" type="text" class="form-control" value="${newPdC.product.productId}" readonly="readonly" /><br/>
 
  評論訊息:<form:textarea path="productComment" class="form-control"/><br/><br/>
  評論等級:
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
  <label class="form-check-label" for="inlineRadio1">非常滿意</label>
</div>
<div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  <label class="form-check-label" for="inlineRadio2">滿意</label>
</div>
  <div class="form-check form-check-inline">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
  <label class="form-check-label" for="inlineRadio3">不滿意</label>
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