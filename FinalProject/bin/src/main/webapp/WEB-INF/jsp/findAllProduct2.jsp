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
<div class="row justify-content-center">
<table class="table" border="1">
<tr style="background-color:#fac473">
<th>商品編號<th>商家編號<th>商品名稱<th>商品價格<th>上架時間<th>下架時間<th>商品圖片<th>更新時間<th>修改<th>刪除</tr> 
<c:forEach var="value" items="${page.content}">
<tr>
<td> <c:out value="${value.productid}"/></td>
<td> <c:out value="${value.merchant_id}"/></td>
<td> <c:out value="${value.product_name}"/></td>
<td> <c:out value="${value.product_price}"/></td>     	     		
<td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 " value="${value.start_date}" />   	     		
<td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 " value="${value.end_date}" /></td>      	     		
<td> <img src="${contextRoot}/back/product/photo/${value.productid}" width="100px" height="100px"> </td>      	     		
<td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 a hh:mm:ss " value="${value.updated_time}"/></td> 
<td><a href="product/editProduct?id=${value.productid}"><button class="delt" onclick="return del()">📝</button></a></td> 
<td><a href="product/delete/${value.productid}"><button class="delt" onclick="return del()">✂</button></a></td> 
</tr>
</c:forEach>
</table>
</div>
</div>

<div class="row justify-content-center">
 	<div class="col-9" style="text-align: center;">
	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
  	<c:choose> 
  	<c:when test="${pageNumber!= page.number+1}"  > 
  	<a href="${contextRoot}/back/allProduct?p=${pageNumber}"><c:out value="${pageNumber}"/></a>
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
















<!-- <table class="table" border="1"  id="table1"> -->
<!-- <tr style="background-color:#fac473"> -->
<!-- <th>商品編號<th>商家編號<th>商品名稱<th>商品價格<th>上架時間<th>下架時間<th>商品圖片<th>更新時間<th>修改<th>刪除 -->
<!-- </table> -->

<%-- <%-- <h3>共 ${count} 筆商品資料 </h3> --%>

<!-- <div id="div1" ></div> -->


<script>
//  var button = document.querySelectorAll('.delt');
  function del(e) {
  if (confirm("確認要執行嗎?") == true) {
   return true
//       window.location.href='deletedepot.jsp?id='+id;點確認連到下個連結
  } else {
   window.event.returnValue = false; 
  }
 };
//  button.addEventListener('click', del);
 button.forEach(delt => {
  delt.addEventListener('click', del);
  });
 
 
</script>
<jsp:include page="layout/footer.jsp" />