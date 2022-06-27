
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
 
<jsp:include page="layout/header.jsp" />

<div class="content-container">
    
<fieldset>
<legend>新增導遊帳號</legend>

<div id="GIFormContainer1">

        <form:form class="form" method="post" modelAttribute="guideAccount" action="${contextRoot}/login/guide/insert" >

        <label class="GIFLabel">使用者名稱： </label>
        <form:input path="accountName" class="inputBoxAdd"/></br></br></br>

        <label class="GIFLabel">登入密碼： </label>
        <input type="password" name="password" class="inputBoxAdd"/></br></br></br>

        <form:input path="title" class="inputBoxAdd" value="guide" hidden="true"/>

        <form:input path="status" class="inputBoxAdd" value="true" hidden="true"/>

        <button type="submit" class="btn btn-primary">下一步</button>
    </form:form>

</div>

</fieldset>
</div>

<jsp:include page="layout/footer.jsp" />