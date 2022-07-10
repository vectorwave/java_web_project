<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../front/JoTravelFront/frontLayout/frontHeader.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<head>

<link rel="stylesheet" href="<c:url value="/css/blog/style.css"/>">
<link rel="stylesheet" href="<c:url value="/css/blog/responsive.css"/>">
</head>
 <section class="breadcrumb_area">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">以下是您的表單紀錄，請妥善保存</h2>
                     </div>
            </div>
              </section>    
					<div class="content-container" style="text-align:center">

						<div align="center">
			  
						  <fieldset id="formFieldset">
			  
							
			  
							<div id="GIFormContainer1">
	<div align="center">
		<table>
		<thead class="thead-dark">
		<tr>
			
			<th scope="col" style="border:solid blue 20px">Id
			<td>
				<input type="text" name="id" value="${csResult.id}" disabled  style="text-align: center;width: 250px ">
				<input type="hidden" name="id" value="${csResult.id}">
				
			<tr/>
			<tr >
			<th scope="col">ServiceInfo
			<td><input type="text" name="serviceInfo" value="${csResult.serviceInfo}" disabled  style="text-align: center;width: 250px">
				<input type="hidden" name="serviceInfo" value="${csResult.serviceInfo}">
				<tr/>
				
			<tr   >
			<th scope="col">Name
			<td><input type="text" name="name" value="${csResult.name}" disabled  style="text-align: center;width: 250px">
				<input type="hidden" name="name" value="${csResult.name}">
				<tr/>
				
				<tr   >
			<th scope="col">Phone
			<td><input type="text" name="phone" value="${csResult.phone}" disabled  style="text-align: center;width: 250px">
				<input type="hidden" name="phone" value="${csResult.phone}">
				<tr/>
				<tr   >
			<th scope="col">Email
			<td><input type="text" name="email" value="${csResult.email}" disabled  style="text-align: center;width: 250px">
				<input type="hidden" name="email" value="${csResult.email}">	
			<tr/>
			<tr >
			<th scope="col">Description
			<td><input type="text" name="description" value="${csResult.description}" disabled  style="text-align: center;width: 250px">
				<input type="hidden" name="description" value="${csResult.description}">
			<tr/>
			<tr   >
			<th scope="col">PreferedContactTime
			<td><input type="text" name="preferedContactTime" value="${csResult.preferedContactTime}" disabled  style="text-align: center;width: 250px">
				<input type="hidden" name="preferedContactTime" value="${csResult.preferedContactTime}">
					<tr/>
					<tr   >
			<th scope="col">ProcessStatus
			<td><input type="text" name="processStatus" value="${csResult.processStatus}" disabled  style="text-align: center;width: 250px">
				<input type="hidden" name="processStatus" value="${csResult.processStatus}">
				
			<tr  >
			<th scope="col">Remark
			<td><input type="text" name="remark" value="${csResult.remark}" disabled  style="text-align: center;width: 250px">
				<input type="hidden" name="remark" value="${csResult.remark}">
				<tr/>
			<tr   >
			<th scope="col">CreatedAt
			<td><input type="text" name="createdAt" value="${csResult.createdAt}" disabled  style="text-align: center;width: 250px">
				<input type="hidden" name="createdAt" value="${csResult.createdAt}">
		<tr/>
	</thead>
			
			
			
			
			
			
			
	</table>
	</div>
</div>
	</fieldset>
</div>
</div>


/FinalProject/src/main/webapp/WEB-INF/jsp/front/JoTravelFront


<jsp:include page="../front/JoTravelFront/frontLayout/frontFooter.jsp" />