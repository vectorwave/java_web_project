
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<h1 style="text-align: center"> 新增會員資料 </h1>
<h3>你好, ${loginuser.accountName}</h3>

<form:form method="post" enctype="multipart/form-data" action="${contextRoot}/member/add" modelAttribute="member">

  <form:input path="memberId" type="hidden" />
  <input type="hidden" id="accountId" name="accountId" value="${loginuser.accountId}" />
  <div class="form-group" style="width: 300px;margin: auto;text-align: center;">
  姓名： <form:input type="text" path="memberName" class="form-control" id="memberName"/><br/><span id="mmemberName"></span>
  地址：<form:input type="text" path="address" class="form-control" id="address"/><br/><span id="maddress"></span>
  生日： <form:input type="date" path="birthDate" class="form-control" id="birthdate"/><br/><span id="mbirthDate"></span>
  email：<form:input type="text" path="email" class="form-control" id="email"/><br/><span id="memail"></span>
<%--   性別：<form:input type="redio" path="gender" class="form-control" placeholder="0=女，1=男"/><br/> --%>
 <label class="GIFLabel" id="gender">性別： </label>

        <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="float:right; margin-right: 130px;">
            <form:radiobutton path="gender" value="男性" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio1" style="border-radius: 5px 0px 0px 5px;">男性</label>
    
            <form:radiobutton path="gender" value="女性" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio2">女性</label>

            <form:radiobutton path="gender" value="保密" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio3">保密</label>
          </div></br></br></br>
  電話：<form:input type="text" path="phone" class="form-control" id="phone" /><br/><span id="mphone"></span>
  會員圖片：<input type="file" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><br/>
 
  <img id="output" width="300" height="300"/><br/><br/><br/>
  
<!--   <input type="button" id="one"  value="一鍵輸入"> -->
<button id="one" type="button" class="btn btn-secondary"
						>一鍵輸入</button>

  <input type="button" onclick="submitForm(form)"  value="新增" class="btn btn-lg btn-success btn-block" id="send">
  </div>	
  
  
  </form:form>
  
  
<script>
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
			if( $.trim(address)==''){
				$('#maddress').text('地址不可為空');
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
			if( $.trim(email)==''){
				$('#memail').text('email不可為空');
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
			
		
		});
	});
  
  $('#one').click(function(){
		$('#memberName').val("杜同學");
		$('#address').val("台北市復興南路一段390巷");
		$('#birthdate').val("1998/03/25");
		$('#email').val("karen1111@yahoo.com.tw");
		$('#gender').val("女性");
		$('#phone').val("0912123123");
		
	})
  function submitForm(form){
	  let aid = $('#accountId').val()
	  console.log(form)
	  $.ajax({
		  type: "get",
		  url: "/jotravel/member/searchAccountId/" + aid,
		  success: function(response){
			  console.log(response.result)
			  if(response.result == "true"){
				  Swal.fire({
					  title: '確認新增?',
					  showDenyButton: true,
					  confirmButtonText: '儲存',
					  denyButtonText: '取消',
					}).then((result) => {
					  /* Read more about isConfirmed, isDenied below */
					  if (result.isConfirmed) {
//					    Swal.fire('Saved!', '', 'success')
					    form.submit(form);
					  } else if (result.isDenied) {
					    return false;
					  }
					})
			  }else{
				  Swal.fire({
					  title: '已有相關會員資料',
					  showDenyButton: true,
					  confirmButtonText: 'OK',
					  denyButtonText: '取消',
					}).then((result) => {
					  /* Read more about isConfirmed, isDenied below */
					  if (result.isConfirmed) {
					    return true;
					  } else if (result.isDenied) {
					    return false;
					  }
					})
			  }
			  
		  },	
		  error: function(xhr,ajaxOptions,throwError){
			  console.log('error')
		  }
	  })
	  
	  
	  
	  
// 	  Swal.fire({
// 		  title: '確認新增?',
// 		  showDenyButton: true,
// 		  confirmButtonText: '儲存',
// 		  denyButtonText: '取消',
// 		}).then((result) => {
// 		  /* Read more about isConfirmed, isDenied below */
// 		  if (result.isConfirmed) {
// //		    Swal.fire('Saved!', '', 'success')
// 		    form.submit(form);
		    
// 		  } else if (result.isDenied) {
		    
// 		    return false;
// 		  }
// 		})
}
  </script> 
<jsp:include page="layout/footer.jsp" />