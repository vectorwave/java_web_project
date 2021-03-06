
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<form:form method="post" modelAttribute="newAccount">

<h1 style="text-align: center"> 修改會員 </h1>
<div style="width: 300px;margin: auto;text-align: center;">
<%-- <form:form method="post" modelAttribute="newAccount" > --%>
<br><form:hidden value="${accountId}" id="accountId" path="accountId"/>
<br>帳號<form:input type="text" value="" path="accountName" id="accountName" class="form-control" placeholder="帳號"/><span id="maccountName"></span>
<br>密碼<form:input type="text" value="" path="password" id="password" class="form-control" placeholder="密碼"/><span id="mpassword"></span>
身分:<form:select path="title" class="form-select" required="required">
  <form:option value="商家" >商家</form:option>
  <form:option value="會員">會員</form:option>
  </form:select><br>帳號狀態<form:input type="text" value="" path="status" id="status" class="form-control" placeholder="帳號狀態"/><span id="mstatus"></span>
<br><form:input type="hidden" value="" path="signupDate" id="signupDate" class="form-control" placeholder=""/><span id="msignDate"></span>

  <input onclick="submitForm(form)" type="button" class="btn btn-primary" value="修改" id="send">

<!-- 		<input type="submit" onclick="submitForm(form)" value="修改" class="btn btn-lg btn-success btn-block" id="send"/> -->
</div>
</form:form>


 
<script type="text/javascript">

$(function(){

	$('#send').click(function(){
		$('form span').text('');
		
		var accountName = $('#accountName').val();
		var password = $('#password').val();
		var title = $('#title').val();
		var status = $('#status').val();
		var signupDate = $('#signupDate').val();
		

		if( $.trim(accountName)==''){
				$('#maccountName').text('帳號不可為空');
				Swal.fire({
					  icon: 'error',
					  title: 'Oops...',
					  text: 'Something went wrong!'					  
					})
				return;
		}
		if( $.trim(password)==''){
			$('#mpassword').text('密碼不可為空');
			Swal.fire({
				  icon: 'error',
				  title: 'Oops...',
				  text: 'Something went wrong!'					  
				})
			return;
		}
		if( $.trim(title)==''){
			$('#mtitle').text('身分不可為空');
			Swal.fire({
				  icon: 'error',
				  title: 'Oops...',
				  text: 'Something went wrong!'					  
				})
			return;
		}
		if( $.trim(status)==''){
			$('#mstatus').text('身分不可為空');
			Swal.fire({
				  icon: 'error',
				  title: 'Oops...',
				  text: 'Something went wrong!'					  
				})
			return;
		}	
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
//		    Swal.fire('Saved!', '', 'success')
		    form.submit(form);
		    
		  } else if (result.isDenied) {
		    
		    return false;
		  }
		})
}


</script>

  <%-- </form:form> --%>

</body>
</html>
<jsp:include page="layout/footer.jsp" />