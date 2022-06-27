
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
 
<jsp:include page="layout/header.jsp" />

<div class="content-container">
    

<fieldset>
<legend>修改導遊資料</legend>

<div id="GIFormContainer1">

    <form:form class="form" method="post" modelAttribute="guideUpdate" action="${contextRoot}/guide_info/edit" enctype="multipart/form-data">

        <label class="GIFLabel">會員編號： </label>
        <form:input path="loginId" readonly="true" class="inputBox1"/></br></br>

        <label class="GIFLabel">主頁名稱： </label>
        <form:input path="profile_name" class="inputBoxAdd"/></br></br>

        <label class="GIFLabel">個人圖片： </label>
        <input type="file" name="profilePic" accept="image/*" class="inputBoxAdd"/></br></br>

        <label class="GIFLabel">姓名： </label>
        <form:input path="guide_name" class="inputBoxAdd"/></br></br>

        <label class="GIFLabel">個人簡述： </label>
        <form:textarea path="guide_description" class="textareaAdd"/></br></br>

        <label class="GIFLabel">生日： </label>
        <form:input path="guide_birthday" class="inputBoxAdd"/></br></br>

        <label class="GIFLabel">性別： </label>
        <!-- <form:input path="guide_gender" class="inputBoxAdd"/></br></br> -->
        <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="float:right; margin-right: 130px;">
            <form:radiobutton path="guide_gender" value="男性" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio1" style="border-radius: 5px 0px 0px 5px;">男性</label>
    
            <form:radiobutton path="guide_gender" value="女性" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio2">女性</label>

            <form:radiobutton path="guide_gender" value="保密" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off"/>
            <label class="btn btn-outline-primary" for="btnradio3">保密</label>
          </div></br></br>

        <c:set var="guideGender" value="${guideUpdate.guide_gender}" />

        <label class="GIFLabel">聯絡電話： </label>
        <form:input path="guide_phone" class="inputBoxAdd"/></br></br>

        <label class="GIFLabel">電子郵件： </label>
        <form:input path="guide_email" class="inputBoxAdd"/></br></br>

        <label class="GIFLabel">聯絡地址： </label>
        <form:textarea path="guide_address" class="textareaAdd"/></br></br>

        <label class="GIFLabel">證照類型： </label>
        <form:input path="licence_type" class="inputBoxAdd"/></br></br>

        <label class="GIFLabel">證照號碼： </label>
        <form:input path="licence_no" class="inputBoxAdd"/></br></br>

        <button type="submit" class="btn btn-primary">修改</button>
        <button type="button" class="btn btn-secondary" onclick="history.go(-1)">取消</button>
    </form:form>

</div>

</fieldset>
</div>

<script>
    const r1 = document.getElementById('btnradio1');
    const r2 = document.getElementById('btnradio2');
    const r3 = document.getElementById('btnradio3');
    
    var Test = '${guideUpdate.guide_gender}';

    console.log(Test);
    
    if(Test =='男性') r1.checked = true;
    if(Test =='女性') r2.checked = true;
    if(Test =='保密') r3.checked = true;
</script>

<jsp:include page="layout/footer.jsp" />