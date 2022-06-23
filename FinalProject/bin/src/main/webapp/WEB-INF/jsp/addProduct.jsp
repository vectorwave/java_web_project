
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<h1> 新增產品 </h1>

<form:form method="post" enctype="multipart/form-data" action="${contextRoot}/back/product" modelAttribute="newPd" >

  <form:input path="productid" type="hidden" />
  <form:input path="merchant_id" type="hidden" />
  
  
  <div class="form-group">
  產品名稱：<form:input type="text" path="product_name" class="form-control" required="required" placeholder="商品名稱" /><br/>
  產品價格： <form:input type="text" path="product_price" class="form-control" value="1000" required="required"/><br/>
  上架時間：<form:input type="date" path="start_date" class="form-control" required="required" /><br/>
  下架時間：<form:input type="date" path="end_date" class="form-control"  required="required"/><br/>
  產品圖片：<input type="file" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><br/>
	
	<img id="output" width="300" height="300"/>
  
  </div>
  
  <input type="submit" name="submit" value="更新">
  
  </form:form>
  
  <div> ${msg.okMsg}
  </div>
  
 <script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };
</script> 
  
 <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> 
<jsp:include page="layout/footer.jsp" />