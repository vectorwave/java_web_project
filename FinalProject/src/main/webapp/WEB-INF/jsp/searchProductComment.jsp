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
<td><button class="delt" onclick="upd('${value.prouctCommentId}')" >📝</button></td> 
<td><button class="delt" onclick="del('${value.prouctCommentId}')" >✂</button></td> 
<%-- <td><a href="product/editProduct?id=${value.productId}"><button class="delt" onclick="return del()">📝</button></a></td>  --%>
<%-- <td><a href="product/delete/${value.productId}"><button class="delt" onclick="return del()">✂</button></a></td>  --%>
</tr>
</c:forEach>
</div>


</table>



<script>
  function del(e) {
  if (confirm("確認要執行嗎?") == true) {
   return true
  } else {
   window.event.returnValue = false; 
  }
 };

 button.forEach(delt => {
  delt.addEventListener('click', del);
  });
 
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
			  
			document.location.href='http://localhost:8081/jotravel/back/productcomment/editProductComment?id='+e;
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

			document.location.href='http://localhost:8081/jotravel/back/productcomment/delete/'+e;
		  }else if (result.isDenied) {
			  
			    return false;
			  }
		});
 }
 
 
 
</script>
<jsp:include page="layout/footer.jsp" />