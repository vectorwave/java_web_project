<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="container">
<p/>
--<div class="row justify-content-left">--
<div class="col-7">
<div class="card">

<div class="card-body">
<h1>以下是您的表單紀錄，請妥善保存</h1>
	<table border="1" style="width:300px">
		<tr style="background-color: orange" >
			
			<th style="text-align: center">Id
			<td>
				<input type="text" name="id" value="${csResult.id}" disabled  style="text-align: center;width:300px">
				<input type="hidden" name="id" value="${csResult.id}">
				<br>
			<tr/>
			<tr style="background-color: orange" class="col-9">
			<th style="text-align: center">ServiceInfo
			<td><input type="text" name="serviceInfo" value="${csResult.serviceInfo}" disabled  style="text-align: center;width:300px"><br>
				<input type="hidden" name="serviceInfo" value="${csResult.serviceInfo}">
				<tr/>
				
			<tr style="background-color: orange" >
			<th style="text-align: center">Name
			<td><input type="text" name="name" value="${csResult.name}" disabled  style="text-align: center;width:300px"><br>
				<input type="hidden" name="name" value="${csResult.name}">
				<tr/>
				
				<tr style="background-color: orange" >
			<th style="text-align: center">Phone
			<td><input type="text" name="phone" value="${csResult.phone}" disabled  style="text-align: center;width:300px"><br>
				<input type="hidden" name="phone" value="${csResult.phone}">
				<tr/>
				<tr style="background-color: orange" >
			<th style="text-align: center">Email
			<td><input type="text" name="email" value="${csResult.email}" disabled  style="text-align: center;width:300px"><br>
				<input type="hidden" name="email" value="${csResult.email}">	
			<tr/>
			<tr style="background-color: orange" >
			<th style="text-align: center">Description
			<td><input type="text" name="description" value="${csResult.description}" disabled  style="text-align: center;width:300px"><br>
				<input type="hidden" name="description" value="${csResult.description}">
			<tr/>
			<tr style="background-color: orange" >
			<th style="text-align: center">PreferedContactTime
			<td><input type="text" name="preferedContactTime" value="${csResult.preferedContactTime}" disabled  style="text-align: center;width:300px"><br>
				<input type="hidden" name="preferedContactTime" value="${csResult.preferedContactTime}">
					<tr/>
					<tr style="background-color: orange" >
			<th style="text-align: center">ProcessStatus
			<td><input type="text" name="processStatus" value="${csResult.processStatus}" disabled  style="text-align: center;width:300px"><br>
				<input type="hidden" name="processStatus" value="${csResult.processStatus}">
				
			<tr style="background-color: orange" >
			<th style="text-align: center">Remark
			<td><input type="text" name="remark" value="${csResult.remark}" disabled  style="text-align: center;width:300px"><br>
				<input type="hidden" name="remark" value="${csResult.remark}">
				<tr/>
			<tr style="background-color: orange" >
			<th style="text-align: center">CreatedAt
			<td><input type="text" name="createdAt" value="${csResult.createdAt}" disabled  style="text-align: center;width:300px"><br>
				<input type="hidden" name="createdAt" value="${csResult.createdAt}">
		<tr/>
			
			
			
			
			
			
			
			
	</table>
</div>
</div>
</div>
</div>
</div>
<jsp:include page="../layout/footer.jsp" />