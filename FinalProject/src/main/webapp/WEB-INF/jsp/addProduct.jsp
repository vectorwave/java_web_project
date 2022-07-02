
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

<form:form  class="form-floating" method="post" enctype="multipart/form-data" action="${contextRoot}/back/product" modelAttribute="newPd" >

  <form:input path="productId" type="hidden" />
  
  <div class="form-group">
  商家編號：<input name="accountId" id="accountId" class="form-control" type="text" value="${loginuser.accountId}" readonly="readonly"><br/>
  產品名稱：<form:input type="text" id="productName" path="productName" class="form-control" required="required" placeholder="商品名稱" /><br/>
  產品價格：<form:input type="text" id="productPrice" path="productPrice" class="form-control" value="1000" required="required"/><br/>
  上架時間：<form:input type="date" id="startDate" path="startDate" class="form-control" required="required" readonly="readonly" /><br/>
  下架時間：<form:input type="date" id="endDate" path="endDate" class="form-control"  required="required" readonly="readonly"/><br/>
  產品圖片：<img id="output" width="300" height="300"/><br/><br/>
  
  <input type="file" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><br/>
  
  區域分類:<form:select path="productArea" id="productArea" class="form-select" required="required">
  <form:option value="北部" >北部</form:option>
  <form:option value="東部">東部</form:option>
  <form:option value="南部">南部</form:option>
  <form:option value="西部">西部</form:option>
  <form:option value="外島">外島</form:option>
</form:select>
  <br/>
  
  商品簡述(50字內):<form:input type="text" id="productSimpleDescription" path="productSimpleDescription" class="form-control" maxlength="50" required="required"/><br/>


  商品詳述(300字內):<form:input type="textarea" id="productDescription" path="productDescription" class="form-control" maxlength="300" required="required"/><br/>
  
  
  上架狀態:<form:select path="status" class="form-select" required="required">
  <form:option value="上架" >上架</form:option>
  <form:option value="下架">下架</form:option>
</form:select>
  
  </div>
  
  <input onclick="submitForm(form)" type="button" class="btn btn-primary" value="新增商品">
  <input type="button" id="one" value="一鍵新增" />  
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
  
  $('#one').click(function(){
	  $('#productName').val("火辣辣墾丁重砲海陸三日遊");
	  $('#productPrice').val("6800");
	  $('#startDate').val("2022-07-22");
	  $('#endDate').val("2022-07-25");
	  $('#productArea').val("南部");
	  $('#productSimpleDescription').val("水上活動三選二,暢遊墾丁大街,包含兩天住宿,海鮮餐廳吃到飽!");
	  $('#productDescription').val("第一日:08:00台北火車站東三門集合,搭乘遊覽車直達墾丁,中餐為精選海陸合菜,下午自由行程,晚上暢遊墾丁大街,精選串燒酒吧,<br/>第二日:火辣辣比基尼衝浪,享受墾丁陽光<br/>第三日:早上遊玩恆春古蹟,中午啟程回家!");

	 })
  
</script> 
  
 <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> 
<jsp:include page="layout/footer.jsp" />