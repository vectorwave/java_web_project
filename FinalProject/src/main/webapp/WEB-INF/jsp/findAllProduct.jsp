<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
 
  $(function(){
	  
//	  var form = document.getElementById('form1');
//	  var send = document.getElementById('send');
	  
// 	  send.addEventListener('click', function(e){
//       	e.preventDefault();
		//查詢所有商品      	
      	 $.ajax({
      	     url:'http://localhost:8081/jotravel/back/product/',
      	     method: 'get',
      	     contentType: 'application/json', // 送過去的 
      	     dataType: 'json',
      	     
      	     success: function(result){
      	    	$('#table1 tr td').remove()
      	        console.log("result=" +result)
//       	     	jresult = JSON.stringify(result)
//       	     	console.log("jresult=" +jresult)
				
      	     	msg_data = ''     
      	     	$.each(result ,function(index ,value){
      	     		msg_data += '<tr>'
      	     		msg_data += '<td>' + value.productId + '</td>'
      	     		msg_data += '<td>' + value.account.acountId + '</td>'
      	     		msg_data += '<td>' + value.productName + '</td>'
      	     		msg_data += '<td>' + value.productPrice + '</td>'      	     		
      	     		msg_data += '<td>' + value.startDate + '</td>'      	     		
      	     		msg_data += '<td>' + value.endDate + '</td>'      	     		
      	     		msg_data += '<td>' + '<img src="${contextRoot}/jotravel/back/product/photo/' + value.productId + '" width="100px" height="100px" >' +'</td>'  
      	     		msg_data += '<td>' + value.updatedTime + '</td>'      	     		
      	     		msg_data += '<td>' + '<a href="product/editProduct?id='+ value.productId +'"><button class="delt" onclick="return del()">📝</button></a>' + '</td>'      	     		
      	     		msg_data += '<td>' + '<a href="product/delete/'+ value.productId +'"><button class="delt" onclick="return del()">✂</button></a>' + '</td>'      	     		
      	            msg_data += '<tr>'
      	            	
      	     	})
      	     	
      	     	$('#table1').append(msg_data)
      	     
      	     },
//       	     error:function(err){
//       	       console.log(err)
//       	     }
      	   })
// ------------------------------------------------------------------------------------------------------------------------
	//商品搜尋功能
	  var send = document.getElementById('send');   

      send.addEventListener('click', function(e){
       		e.preventDefault();
			
			var searchKey = document.getElementById('searchBar').value;
			var searchUrl ='http://localhost:8081/jotravel/back/product/searchProduct?key='+searchKey;
// 			+'&p='+
			console.log(searchKey)   
			console.log(searchUrl)
			
			$.ajax({
      	     url:searchUrl,
      	     method: 'get',
      	     contentType: 'application/json', // 送過去的 
			 dataType: 'json',
      	     
      	     success: function(result){
      	    	$('#table1 tr td').remove()
      	        console.log("result=" +result)
      	        
      	        
//       	     	jresult = JSON.stringify(result)
//       	     	console.log("jresult=" +jresult)
      	        
      	     	msg_data =''    
      	     	$.each(result ,function(index ,value){
      	     		msg_data += '<tr>'
      	     		msg_data += '<td>' + value.productId + '</td>'
      	     		msg_data += '<td>' + value.account + '</td>'
      	     		msg_data += '<td>' + value.productName + '</td>'
      	     		msg_data += '<td>' + value.productPrice + '</td>'      	     		
      	     		msg_data += '<td>' + value.startDate + '</td>'      	     		
      	     		msg_data += '<td>' + value.endDate + '</td>'      	     		
      	     		msg_data += '<td>' + '<img src="${contextRoot}/jotravel/back/product/photo/' + value.productId + '" width="100px" height="100px" >' +'</td>'  
      	     		msg_data += '<td>' + value.updatedTime + '</td>'      	     		
      	     		msg_data += '<td>' + '<a href="product/editProduct?id='+ value.productId +'"><button class="delt" onclick="return del()">📝</button></a>' + '</td>'      	     		
      	     		msg_data += '<td>' + '<a href="product/delete/'+ value.productId +'"><button class="delt" onclick="return del()">✂</button></a>' + '</td>'      	     		
      	            msg_data += '<tr>'
      	            	
      	     	})
      	     	
      	     	$('#table1').append(msg_data)
				
      	     },
//       	     error:function(err){
//       	       console.log(err)
//       	     }
      	   })

		});

// ------------------------------------------------------------------------------------------------------------------------			
  });

</script>


<div id=div2>
<h2>商品資料</h2>
</div>
<form>
<input type="text" name="searchBar" placeholder="搜尋商品名稱" id="searchBar"> <input type="submit" id="send" value="🔍" > <a href="http://localhost:8081/jotravel/back/allProduct"><input type="button" value="全部商品" ></a>  
</form>
<table class="table" border="1"  id="table1">
<tr style="background-color:#fac473">
<th>商品編號<th>商家編號<th>商品名稱<th>商品價格<th>上架時間<th>下架時間<th>商品圖片<th>更新時間<th>修改<th>刪除
</table>

<h3>共 ${count} 筆商品資料 </h3>

<div id="div1" ></div>

<div class="row justify-content-center">
 	<div class="col-9" style="text-align: center;">
	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
  	<c:choose> 
  	<c:when test="${pageNumber!= page.number+1}"  > 
  	<a href="${contextRoot}/jotravel/back/allProduct?key=searchKey&p=${pageNumber}"><c:out value="${pageNumber}"/></a>
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