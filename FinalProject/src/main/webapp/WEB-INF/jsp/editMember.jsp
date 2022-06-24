
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<form:form method="post" enctype="multipart/form-data" modelAttribute="newMember">

<h1 style="text-align: center"> 修改會員資訊 </h1>
<div style="width: 300px;margin: auto;text-align: center;">
<form:form method="post" modelAttribute="newMember" >
<br><form:hidden value="${accountId}" id="accountId" path="accountId"/>
<br><form:input type="text" value="" path="memberName" id="memberName" class="form-control" placeholder="姓名"/><span id="musername"></span>
<br><form:input type="date" value="" path="birthDate" id="birthDate" class="form-control" placeholder="生日"/><span id="mbirthdate"></span>
<br><form:input type="text" value="" path="phone" id="phone" class="form-control" placeholder="電話" /><span id="mphone"></span>
<br><form:input type="text" value="" path="email" id="email" class="form-control" placeholder="email"/><span id="memail"></span>
<br><form:input type="text" value="" path="address" id="address" class="form-control" placeholder="地址" /><span id="maddress"></span>
<br><form:input type="text" value="" path="gender" id="gender" class="form-control" placeholder="0=女，1=男" /><span id="mgender"></span>
<br>     <input type="file" value="" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><br/>

<img id="output" width="300" height="300">
		
</form:form>
<input type="submit" value="修改" class="btn btn-lg btn-success btn-block" id="send"/>
</div>

<script>
   //預覽  透過id(output)
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };
</script> 
<script type="text/javascript">

// $(function(){
// 	$('#send').click(function(){
		
// 		$('form span').text('');
		
// 		var member_id = $('#member_id').val();
// 		var user_name = $('#user_name').val();
// 		var birthdate = $('#birthdate').val();
// 		var phone = $('#phone').val();
// 		var email = $('#email').val();
// 		var address = $('#address').val();
// 		var gender = $('#gender').val();
// 		var photopath = $('#photopath').val();

// 		if( $.trim(user_name)==''){
// 				$('#muser_name').text('姓名不可為空');
// 				Swal.fire({
// 					  icon: 'error',
// 					  title: 'Oops...',
// 					  text: 'Something went wrong!'					  
// 					})
// 				return;
// 		}
// 		if( $.trim(birthdate)==''){
// 			$('#mbirthdate').text('生日不可為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}
// 		if( $.trim(phone)==''){
// 			$('#mphone).text('電話不可為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}
// 		if( $.trim(email)==''){
// 			$('#email').text('email不可為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}
// 		if( $.trim(address)==''){
// 			$('#maddress').text('地址不可為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}
// 		if( $.trim(gender)==''){
// 			$('#mgender').text('性別不可為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}
// 		if( $.trim(photopath)==''){
// 			$('#mphotopath').text('照片不得為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}
// 		 var params= {"member_id":''+member_id, "user_name":''+user_name,"birthdate":''+birthdate 
// 				 ,"phone":''+phone ,"email":''+email 
// 				 ,"address":''+address ,"gender":''+gender 
// 				 ,"photopath":''+photopath};
// 		 var data=JSON.stringify(params);
// 		 console.log(data)
		 
// 		 	$.ajax({
// 	    		url:'${contextRoot}/member/edit/${member_id}',
// 	    		method:'put',
// 	    		contentType:'application/json',
// 	    		data: data,
// 	    		success:function(res){
// 	    			if(res=='eidt'){
// 	    				Swal.fire({
// 	    					  icon: 'success',
// 	    					  title: '修改成功',
// 	    					  showConfirmButton: false,
// 	    					  timer: 2500
// 	    					}).then(function(){
// 	    					 window.location.href = "${contextRoot}/member/findall"
// 	    					})
// 	    			}	    	
// 	    		}
// 	    	});
				
// 	});
	
// });


</script>

</body>
</html>
  </form:form>

</body>
</html>
<jsp:include page="layout/footer.jsp" />