
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<jsp:useBean id="member" class="com.group1project.model.bean.Member" scope="request" />


<form:form method="post" enctype="multipart/form-data" modelAttribute="newMember">

	<h1 style="text-align: center"> 修改會員資訊 </h1>
	<div style="width: 300px;margin: auto;text-align: center;">
<%-- <form:form method="post" modelAttribute="newMember" > --%>
	<br><form:hidden value="" id="memberId" path="memberId"/>
		<input type="hidden" value="${newMember.account.accountId}" id="accountId" name="accountId" />
	<br><form:input type="text" value="" path="memberName" id="memberName" class="form-control" placeholder="姓名"/><span id="mmemberName"></span>
	<br><form:input type="date" value="" path="birthDate" id="birthDate" class="form-control" placeholder="生日"/><span id="mbirthDate"></span>
	<br><form:input type="text" value="" path="phone" id="phone" class="form-control" placeholder="電話" /><span id="mphone"></span>
	<br><form:input type="text" value="" path="email" id="email" class="form-control" placeholder="email"/><span id="memail"></span>
	<br><form:input type="text" value="" path="address" id="address" class="form-control" placeholder="地址" /><span id="maddress"></span>
<%-- 	<br><form:input type="text" value="" path="gender" id="gender" class="form-control" placeholder="0=女，1=男" /><span id="mgender"></span> --%>
	<label class="GIFLabel">性別： </label>

        <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="float:right; margin-right: 130px;">
            <form:radiobutton path="gender" value="男性" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio1" style="border-radius: 5px 0px 0px 5px;">男性</label>
    
            <form:radiobutton path="gender" value="女性" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio2">女性</label>

            <form:radiobutton path="gender" value="保密" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio3">保密</label>
          </div></br></br></br><span id="mgender"></span>
	<br>     <input type="file" value="" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><span id="mphotoPath"></span>
	<br>
	
	<img id="output" width="300" height="300">
	<input type="button" onclick="submitForm(form)" value="修改" class="btn btn-lg btn-success btn-block" id="send"/>
	</div>	
</form:form>


<script>
   //預覽  透過id(output)
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };


$(function(){
	$('#send').click(function(){
		
		$('form span').text('');
		
		var memberId = $('#memberId').val();
		var memberName = $('#memberName').val();
		var birthDate = $('#birthDate').val();
		var phone = $('#phone').val();
		var email = $('#email').val();
		var address = $('#address').val();
		var gender = $('#gender').val();
		var photoPath = $('#photoPath').val();

		if( $.trim(memberName)==''){
				$('#mmemberName').text('姓名不可為空');
				Swal.fire({
					  icon: 'error',
					  title: 'Oops...',
					  text: 'Something went wrong!'					  
					})
				return;
		}
		if( $.trim(birthDate)==''){
			$('#mbirthDate').text('生日不可為空');
			Swal.fire({
				  icon: 'error',
				  title: 'Oops...',
				  text: 'Something went wrong!'					  
				})
			return;
		}
		if( $.trim(phone)==''){
			$('#mphone').text('電話不可為空');
			Swal.fire({
				  icon: 'error',
				  title: 'Oops...',
				  text: 'Something went wrong!'					  
				})
			return;
		}
		if( $.trim(email)==''){
			$('#memail').text('email不可為空');
			Swal.fire({
				  icon: 'error',
				  title: 'Oops...',
				  text: 'Something went wrong!'					  
				})
			return;
		}
		if( $.trim(address)==''){
			$('#maddress').text('地址不可為空');
			Swal.fire({
				  icon: 'error',
				  title: 'Oops...',
				  text: 'Something went wrong!'					  
				})
			return;
		}
// 		if( $.trim(gender)==''){
// 			$('#mgender').text('性別不可為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}
// 		if( $.trim(photoPath)==''){
// 			$('#mphotoPath').text('照片不得為空');
// 			Swal.fire({
// 				  icon: 'error',
// 				  title: 'Oops...',
// 				  text: 'Something went wrong!'					  
// 				})
// 			return;
// 		}			
	});
});
	function submitForm(form){
		  Swal.fire({
			  title: '確認修改?',
			  showDenyButton: true,
			  confirmButtonText: '儲存',
			  denyButtonText: '取消',
			}).then((result) => {
			  /* Read more about isConfirmed, isDenied below */
			  if (result.isConfirmed) {
//			    Swal.fire('Saved!', '', 'success')
			    form.submit(form);
			    
			  } else if (result.isDenied) {
			    
			    return false;
			  }
			})
	}



</script>
<jsp:include page="layout/footer.jsp" />