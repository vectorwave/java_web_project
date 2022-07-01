<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
//   $(function(){

// 		//查詢所有商品評論      	
//       	 $.ajax({
//       	     url:'http://localhost:8081/jotravel/back/productcomment?id=',
//       	     method: 'get',
//       	     contentType: 'application/json', // 送過去的 
//       	     dataType: 'json',
      	     
//       	     success: function(result){
//       	    	$('#table1 tr td').remove()
//       	        console.log("result=" +result)
// //       	     	jresult = JSON.stringify(result)
// //       	     	console.log("jresult=" +jresult)
				
//       	     	msg_data = ''     
//       	     	$.each(result ,function(index ,value){
//       	     		msg_data += '<tr>'
//       	     		msg_data += '<td>' + value.prouctCommentId + '</td>'
//       	     		msg_data += '<td>' + value.product.productName + '</td>'
//       	     		msg_data += '<td>' + value.account.accountName + '</td>'
//       	     		msg_data += '<td>' + value.productComment + '</td>'      	     		
//       	     		msg_data += '<td>' + value.updatedTime + '</td>'      	     		
// //       	     		msg_data += '<td>' + '<img src="${contextRoot}/jotravel/back/product/photo/' + value.productId + '" width="100px" height="100px" >' +'</td>'  
//       	     		msg_data += '<td>' + '<a href="http://localhost:8081/jotravel/back/productcomment/editProductComment?id=' +value.prouctCommentId +'"><button class="delt" onclick="return del()">📝</button></a>' + '</td>'      	     		
//       	     		msg_data += '<td>' + '<a href="http://localhost:8081/jotravel/back/productcomment/delete/'+ value.prouctCommentId +'"><button class="delt" onclick="return del()">✂</button></a>' + '</td>'      	     		
//       	            msg_data += '<tr>'
      	            	
//       	     	})
      	     	
//       	     	$('#table1').append(msg_data)
      	     
//       	     },
// //       	     error:function(err){
// //       	       console.log(err)
// //       	     }
//       	   })
// // ------------------------------------------------------------------------------------------------------------------------
// 	//商品搜尋功能
	  

// // ------------------------------------------------------------------------------------------------------------------------			
//   });

</script>


<div id=div2>
<h2>商品評論列表</h2>
</div>
<%-- <form> --%>
<!-- <input type="text" name="searchBar" placeholder="搜尋商品名稱" id="searchBar"> <input type="submit" id="send" value="🔍" > <a href="http://localhost:8081/jotravel/back/allProduct"><input type="button" value="全部商品" ></a>   -->
<%-- </form> --%>
<table class="table" border="1"  id="table1">
<tr style="background-color:#fac473">
<th>評論編號<th>商品名稱<th>會員名稱<th>評論內容<th>更新時間<th>修改<th>刪除
<div id="newTable">
<c:forEach var="value" items="${searchPdC}">
<tr> 
<td> <c:out value="${value.prouctCommentId}"/></td>
<td> <c:out value="${value.product.productName}"/></td>
<td> <c:out value="${value.account.accountName}"/></td>
<td> <c:out value="${value.productComment}"/></td>     	     		   	     		
<td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 a hh:mm:ss " value="${value.updatedTime}"/></td> 
<td><button class="delt" onclick="upd('${value.product.productId}')" >📝</button></td> 
<td><button class="delt" onclick="del('${value.product.productId}')" >✂</button></td> 
<%-- <td><a href="product/editProduct?id=${value.productId}"><button class="delt" onclick="return del()">📝</button></a></td>  --%>
<%-- <td><a href="product/delete/${value.productId}"><button class="delt" onclick="return del()">✂</button></a></td>  --%>
</tr>
</c:forEach>
</div>


</table>

<%-- <h3>共 ${count} 筆商品資料 </h3> --%>

<!-- <div id="div1" ></div> -->

<!-- <div class="row justify-content-center"> -->
<!--  	<div class="col-9" style="text-align: center;"> -->
<%-- 	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}"> --%>
<%--   	<c:choose>  --%>
<%--   	<c:when test="${pageNumber!= page.number+1}"  >  --%>
<%--   	<a href="${contextRoot}/jotravel/back/allProduct?key=searchKey&p=${pageNumber}"><c:out value="${pageNumber}"/></a> --%>
<%-- <%--   	<c:if test="${pageNumber != page.totalPages}"><span>|</span></c:if> --%> 
<%--  	</c:when> --%>
<%--  	<c:otherwise> --%>
<%-- <%--  	<span><c:out value="${pageNumber}"/> |</span> --%> 
<%--  	<c:out value="${pageNumber}"/> --%>
<%--  	</c:otherwise> --%>
<%--  	</c:choose> --%>
 	
<%--  	 <c:if test="${pageNumber != page.totalPages}"> --%>
<!--    | -->
<%--    </c:if> --%>
<%--  	</c:forEach> --%>
 
<!--  </div> -->
<!-- </div> -->

<script>
 var button = document.querySelectorAll('.delt');
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