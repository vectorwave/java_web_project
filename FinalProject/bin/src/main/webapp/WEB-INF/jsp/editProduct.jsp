<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<h1> 編輯資料 </h1>

<form:form method="post" modelAttribute="newPd" enctype="multipart/form-data">

  <form:input path="productid" type="hidden" />
  <form:input path="merchant_id" type="hidden" />
  
  
  <div class="form-group">
  產品名稱：<form:input type="text" path="product_name" class="form-control"/><br/>
  產品價格： <form:input type="text" path="product_price" class="form-control"/><br/>
  上架時間：<form:input type="date" path="start_date" class="form-control"/><br/>
  下架時間：<form:input type="date" path="end_date" class="form-control"/><br/>
  產品圖片：<input type="file" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><br/>
	
	<img id="output" width="300" height="300"/>
  </div>
  
  <input type="submit" name="submit" value="更新">
  
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