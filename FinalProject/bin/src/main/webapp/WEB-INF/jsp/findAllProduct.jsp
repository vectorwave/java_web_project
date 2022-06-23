<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
 
  $(function(){
	  
	  var form = document.getElementById('form1');
	  var send = document.getElementById('send');
	  
// 	  send.addEventListener('click', function(e){
//       	e.preventDefault();


      	
      	 $.ajax({
      	     url:'http://localhost:8081/jotravel/back/product',
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
      	     		msg_data += '<td>' + value.productid + '</td>'
      	     		msg_data += '<td>' + value.merchant_id + '</td>'
      	     		msg_data += '<td>' + value.product_name + '</td>'
      	     		msg_data += '<td>' + value.product_price + '</td>'      	     		
      	     		msg_data += '<td>' + value.start_date + '</td>'      	     		
      	     		msg_data += '<td>' + value.end_date + '</td>'      	     		
      	     		msg_data += '<td>' + value.product_pic + '</td>'      	     		
      	     		msg_data += '<td>' + value.updated_time + '</td>'      	     		
      	     		msg_data += '<td>' + '<a href="product/editProduct?id='+ value.productid +'"><button class="delt" onclick="return del()">📝</button></a>' + '</td>'      	     		
      	     		msg_data += '<td>' + '<a href="product/delete/'+ value.productid +'"><button class="delt" onclick="return del()">✂</button></a>' + '</td>'      	     		
      	            msg_data += '<tr>'
      	            	
      	     	})
      	     	
      	     	$('#table1').append(msg_data)
      	     
      	     },
//       	     error:function(err){
//       	       console.log(err)
//       	     }
      	   })
	
	
  });

</script>


<div id=div2>
<h2>商品資料</h2>
</div>
<table class="table" border="1"  id="table1">
<tr style="background-color:#fac473">
<th>商品編號<th>商家編號<th>商品名稱<th>商品價格<th>上架時間<th>下架時間<th>商品圖片<th>更新時間<th>修改<th>刪除
</table>

<%-- <h3>共 ${count} 筆商品資料 </h3> --%>

<div id="div1" ></div>


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