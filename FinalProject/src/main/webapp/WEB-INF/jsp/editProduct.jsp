<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<h1> 編輯資料 </h1>

<form:form method="post" modelAttribute="newPd" enctype="multipart/form-data">

  <form:input path="productId" type="hidden" />
  <form:input path="account" type="hidden" />
  
  
  <div class="form-group">

  商家編號：<input type="text" class="form-control" disabled="disabled" value="${newPd.account.accountId}"/><br/>
  產品名稱：<form:input type="text" path="productName" class="form-control"/><br/>
  產品價格：<form:input type="text" path="productPrice" class="form-control"/><br/>
  上架時間：<form:input type="date" path="startDate" class="form-control"/><br/>
  下架時間：<form:input type="date" path="endDate" class="form-control"/><br/>
	
  產品圖片：<img src="${contextRoot}/jotravel/back/product/photo/${photo}" id="output" width="300" height="300"/><br/><br/>
  <input type="file" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><br/>
<!-- 	<img id="output" width="300" height="300"/> -->
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
  
<!--   <input type="submit" name="submit" value="更新"> -->
  <input onclick="submitForm(form)" type="button" class="btn btn-primary" value="更新">
  </form:form>
  
  <script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };
  
//   ------------sweet alert
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
<jsp:include page="layout/footer.jsp" />