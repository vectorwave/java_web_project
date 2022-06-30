
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<h1 style="text-align: center"> 新增帳號 </h1>

<form:form method="post" action="${contextRoot}/login/member/insert" modelAttribute="account">

  <form:input path="accountId" type="hidden"/>
  
  <div class="form-group" style="width: 300px;margin: auto;text-align: center;">
  帳號： <form:input type="text" path="accountName" class="form-control"/><br/>
  密碼：<form:input type="text" path="password" class="form-control"/><br/>
<%--   身分： <form:input type="text" path="title" class="form-control" /><br/> --%>
  身分:<form:select path="title" class="form-select" required="required">
  <form:option value="商家" >商家</form:option>
  <form:option value="會員">會員</form:option>
  </form:select>
 <form:input type="hidden" path="status" class="form-control" value="1"/><br/>
 
  <input type="button" onclick="submitForm(form)" id="send" value="新增" class="btn btn-lg btn-success btn-block">
  </div>	
  
  
  </form:form>
 
  <div> 
  </div>
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
		  title: '確認新增?',
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
<jsp:include page="layout/footer.jsp" />