<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style>
td 
{
    text-align: center; 
    vertical-align: middle;

}
</style>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<div class="container">
<h2>商品資訊</h2>
<form action="/jotravel/back/allProduct" method="get" >
<input type="text" name="key" placeholder="搜尋商品名稱" id="key"> <input type="submit" id="send" value="🔍" > <a href="http://localhost:8081/jotravel/back/allProduct"><input type="button" value="全部商品" ></a>  
</form>
<div>
<!-- class="row justify-content-center" -->
<table class="table" border="1">
<tr style="background-color:#fac473">
<th>選取<th>商品編號<th>商家編號<th>商品名稱<th>商品價格<th>上架時間<th>下架時間<th>商品圖片<th>更新時間<th>區域分類<th>上架狀態<th>修改<th>刪除</tr> 

<div id="newTable">
<c:forEach var="value" items="${page.content}">
<tr>
<td> <input type="checkbox" id="checkbox"></td>
<td> <c:out value="${value.productId}"/></td>
<td> <c:out value="${value.account.accountId}"/></td>
<td> <c:out value="${value.productName}"/></td>
<td> <c:out value="${value.productPrice}"/></td>     	     		
<td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 " value="${value.startDate}" />   	     		
<td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 " value="${value.endDate}" /></td>      	     		
<td> <img src="${contextRoot}/back/product/photo/${value.productId}" width="100px" height="100px"> </td>      	     		
<td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 a hh:mm:ss " value="${value.updatedTime}"/></td> 
<td> <c:out value="${value.productArea}"/></td> 
<td> <c:out value="${value.status}"/></td> 
<!-- <%-- <td><a href="product/editProduct?id=${value.productId}"><button class="delt" onclick="del()" >📝</button></a></td>  --%> -->
<td><button class="delt" onclick="upd('${value.productId}')" >📝</button></td> 
<td><button class="delt" onclick="del('${value.productId}')" >✂</button></td> 
<%-- <td><a href="product/delete/${value.productId}"><button class="delt" onclick="return del()">✂</button></a></td>  --%>
</tr>
</c:forEach>
</div>
</table>
</div>
</div>

<div class="row justify-content-center">
 	<div class="col-9" style="text-align: center;">
	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
  	<c:choose> 
  	<c:when test="${pageNumber!= page.number+1}"  > 
  	<a href="${contextRoot}/back/allProduct?p=${pageNumber}&key=${key}"><c:out value="${pageNumber}"/></a>
<%--   	<c:if test="${pageNumber != page.totalPages}"><span>|</span></c:if> --%>
 	</c:when>
 	<c:otherwise>
<%--  	<span><c:out value="${pageNumber}"/> |</span> --%>
 	<c:out value="${pageNumber}"/>
 	</c:otherwise>
 	</c:choose>
 	
 	 <c:if test="${pageNumber != page.totalPages}">
   |
   </c:if>
 	</c:forEach>
 
 </div>
</div>



<script>

// //  var button = document.querySelectorAll('.delt');
//   function del(e) {
//   if (confirm("確認要執行嗎?") == true) {
//    return true
// //       window.location.href='deletedepot.jsp?id='+id;點確認連到下個連結
//   } else {
//    window.event.returnValue = false; 
//   }
//  };
// //  button.addEventListener('click', del);
//  button.forEach(delt => {
//   delt.addEventListener('click', del);
//   });
 
 
 function upd(e){
	 Swal.fire({
		  title: '確認修改嗎?',
		//   text: "You won't be able to revert this!",
		  icon: 'question',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes!',
		  
		}).then((result) => {
		  if (result.isConfirmed) {
// 		    Swal.fire(
// 		      'Deleted!',
// 		      'Your file has been deleted.',
// 		      'success'
// 		    )
			document.location.href='product/editProduct?id='+e;
		  }else if (result.isDenied) {
			    
			    return false;
			  }
		});
 }
 
 function del(e){
	 Swal.fire({
		  title: '確認刪除嗎?',
		//   text: "You won't be able to revert this!",
		  icon: 'question',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes!',
		  
		}).then((result) => {
		  if (result.isConfirmed) {
// 		    Swal.fire(
// 		      'Deleted!',
// 		      'Your file has been deleted.',
// 		      'success'
// 		    )
			document.location.href='product/delete/'+e;
		  }else if (result.isDenied) {
			  
			    return false;
			  }
		});
 }

</script>
<jsp:include page="layout/footer.jsp" />