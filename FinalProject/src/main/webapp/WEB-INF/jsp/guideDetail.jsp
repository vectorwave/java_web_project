
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
 
<jsp:include page="layout/header.jsp" />

<div class="content-container">
    
<fieldset>
<legend>導遊詳細資訊</legend>

<div id="GIFormContainer1">

    <form:form class="form" method="post" modelAttribute="guideInfo">

        <label class="GIFLabel">會員編號： </label>
        <form:input path="loginId" readonly="true" class="inputBox1"/></br></br>

        <label class="GIFLabel">主頁名稱： </label>
        <form:input path="profile_name" readonly="true" class="inputBox1"/></br></br>

        <label class="GIFLabel">姓名： </label>
        <form:input path="guide_name" readonly="true" class="inputBox1"/></br></br>

        <label class="GIFLabel">個人簡述： </label>
        <form:textarea path="guide_description" readonly="true" class="textarea1"/></br></br>

        <label class="GIFLabel">生日： </label>
        <form:input path="guide_birthday" readonly="true" class="inputBox1"/></br></br>

        <label class="GIFLabel">性別： </label>
        <form:input path="guide_gender" readonly="true" class="inputBox1"/></br></br>

        <label class="GIFLabel">聯絡電話： </label>
        <form:input path="guide_phone" readonly="true" class="inputBox1"/></br></br>

        <label class="GIFLabel">電子郵件： </label>
        <form:input path="guide_email" readonly="true" class="inputBox1"/></br></br>

        <label class="GIFLabel">聯絡地址： </label>
        <form:textarea path="guide_address" readonly="true" class="textarea1"/></br></br>

        <label class="GIFLabel">證照類型： </label>
        <form:input path="licence_type" readonly="true" class="inputBox1"/></br></br>

        <label class="GIFLabel">證照號碼： </label>
        <form:input path="licence_no" readonly="true" class="inputBox1"/></br></br>

        <a  href="${contextRoot}/guidemanagement/update/${guideInfo.loginId}"><button type="button" class="btn btn-primary">修改</button></a>
        <a href="javascript:if(confirm('確實要刪除嗎?')){location='${contextRoot}/guide_info/delete/${guideInfo.loginId}';alert('已刪除!')}"><button type="button" class="btn btn-danger">刪除</button></a>
        <button type="button" class="btn btn-secondary" onclick="location.href='${contextRoot}/guidemanagement?p=${sessionScope.pgn}'">返回</button>
    </form:form>

</div>

</fieldset>
</div>

<jsp:include page="layout/footer.jsp" />