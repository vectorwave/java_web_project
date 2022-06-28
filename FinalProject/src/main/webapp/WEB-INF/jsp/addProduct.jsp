
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!-- <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> -->
<%-- <script type="text/javascript" src="${contextRoot}/js/sweetalert2.all.min.js"></script> --%>
<%-- <link href="${contextRoot}/css/sweetalert2.min.css" rel="stylesheet"> --%>

<h1> 新增產品 </h1>

<form:form method="post" enctype="multipart/form-data" action="${contextRoot}/back/product" modelAttribute="newPd" >

  <form:input path="productId" type="hidden" />
  
  <div class="form-group">
  商家編號：<input name="accountId" class="form-control" type="text" value="${loginuser.accountId}" readonly="readonly"><br/>
  產品名稱：<form:input type="text" path="productName" class="form-control" required="required" placeholder="商品名稱" /><br/>
  產品價格：<form:input type="text" path="productPrice" class="form-control" value="1000" required="required"/><br/>
  上架時間：<form:input type="date" path="startDate" class="form-control" required="required" /><br/>
  下架時間：<form:input type="date" path="endDate" class="form-control"  required="required"/><br/>
  產品圖片：<img id="output" width="300" height="300"/><br/><br/>
  
  <input type="file" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><br/>
  
  區域分類:<form:select path="productArea" class="form-select" required="required">
  <form:option value="北部" >北部</form:option>
  <form:option value="東部">東部</form:option>
  <form:option value="南部">南部</form:option>
  <form:option value="西部">西部</form:option>
  <form:option value="外島">外島</form:option>
</form:select>
  
  上架狀態:<form:select path="status" class="form-select" required="required">
  <form:option value="上架" >上架</form:option>
  <form:option value="下架">下架</form:option>
</form:select>
  
  </div>
  
  <input onclick="submitForm(form)" type="button" class="btn btn-primary" value="新增商品">
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
  
  function submitForm(form){
	  Swal.fire({
		  title: '確認新增商品?',
		  showDenyButton: true,
		  confirmButtonText: '儲存',
		  denyButtonText: '繼續修改',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
		  if (result.isConfirmed) {
// 		    Swal.fire('Saved!', '', 'success')
		    form.submit(form);
		    
		  } else if (result.isDenied) {
		    
		    return false;
		  }
		})
  }
  
</script> 
  
 <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> 
<jsp:include page="layout/footer.jsp" />