
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
 
<jsp:include page="layout/header.jsp" />

<div class="content-container">
    
<fieldset>
<legend>新增導遊資料</legend>

<div id="GIFormContainer1">

        <form:form class="form" method="post" modelAttribute="addGuide" action="${contextRoot}/guide_info/insert" enctype="multipart/form-data">


          <div id="leftPart">
        <label class="GIFLabel">帳號： </label>
        <input type="text" name="accountName"  class="inputBoxAdd"/></br></br></br>

        <label class="GIFLabel">密碼： </label>
        <input type="password" name="pwd"  class="inputBoxAdd"/></br></br></br>

        <label class="GIFLabel">商家名稱： </label>
        <form:input path="profileName" class="inputBoxAdd"/></br></br></br>

        <label class="GIFLabel">個人圖片： </label>
        <input class="form-control" type="file" name="profilePic" id="formFile" accept="image/*" style="width:250px;height: 35px;"></br></br>


        <label class="GIFLabel">姓名： </label>
        <form:input path="guideName" class="inputBoxAdd"/></br></br></br>

        <label class="GIFLabel">個人簡述： </label>
        <form:textarea path="guideDescription" class="textareaAdd"/></br></br></br></br></br>
        <button type="button" onclick="submitForm(form)" class="btn btn-primary">送出</button>
      </div>

      <div id="rightPart">

        <label class="GIFLabel">生日： </label>
        <form:input type="date" path="guideBirthday" class="inputBoxAdd"/></br></br></br>

        <label class="GIFLabel">性別： </label>

        <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="float:right; margin-right: 50px;">
            <form:radiobutton path="guideGender" value="男性" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio1" style="border-radius: 5px 0px 0px 5px;">男性</label>
    
            <form:radiobutton path="guideGender" value="女性" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio2">女性</label>

            <form:radiobutton path="guideGender" value="保密" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio3">保密</label>
          </div></br></br></br>
        
        <label class="GIFLabel">聯絡電話： </label>
        <form:input path="guidePhone" class="inputBoxAdd"/></br></br></br>

        <label class="GIFLabel">電子郵件： </label>
        <form:input path="guideEmail" class="inputBoxAdd"/></br></br></br>

        <label class="GIFLabel">聯絡地址： </label>
        <form:textarea path="guideAddress" class="textareaAdd"/></br></br></br>

        <label class="GIFLabel">證照類型： </label>
        <form:input path="licenceType" class="inputBoxAdd"/></br></br></br>

        <label class="GIFLabel">證照號碼： </label>
        <form:input path="licenceNo" class="inputBoxAdd"/></br></br></br>
      </div>
    </form:form>

</div>

<script>
  function submitForm(form){
	  Swal.fire({
		  title: '確認新增導遊帳號？',
		  showDenyButton: true,
		  confirmButtonText: '確認',
		  denyButtonText: '取消',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
		  if (result.isConfirmed) {
// 		    Swal.fire('Saved!', '', 'success')
		    form.submit(form);
		    
		  } else if (result.isDenied) {
		    
		    return false;
		  }
		})
  }
</script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> 

</fieldset>
</div>

<jsp:include page="layout/footer.jsp" />