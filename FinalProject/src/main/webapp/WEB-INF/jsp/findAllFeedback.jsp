<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="layout/header.jsp" />
<script type="text/javascript"> </script>
<style>
td {
	text-align: center;
	vertical-align: middle;
}
</style>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script
    
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">;
	function del() { 
		var msg = "您真的確定要刪除嗎？\n\n請確認！"; 
		if (confirm(msg)==true){ 
		return true; 
		}else{ 
		return false; 
		} 
		} 
	
</script>
<div class="container">
	<p>
	<p>
	<p>
	<p>
	<h2>意見表單</h2>
	<div class="row justify-content-center">
		<table class="table" border="1">
			<tr style="background-color: #fac473">
				<th>表單編號
				<th>顧客編號
				<th>email
				<th>回應
				<th>回應時間
				<th>更新時間
				<th>狀態
				<th>修改
				<th>刪除
			</tr>
			<c:forEach var="value" items="${page.content}">
				<tr style="background-color: #fac473">
					<td><c:out value="${value.feedbackId}" /></td>
					<td><c:out value="${value.accountId}" /></td>
					<td><c:out value="${value.feedbackEmail}" /></td>
					<td><c:out value="${value.feedback}" /></td>
					<td><fmt:formatDate pattern="yyyy 年 MM 月 dd 日 "
							value="${value.startDate}" />
					<td><fmt:formatDate pattern="yyyy 年 MM 月 dd 日 "
							value="${value.updatedDate}" />
					<td><c:out value="${value.status}" /></td>
					<td><a href="feedback/editFeedback?id=${value.feedbackId}"><button
								class="delt" onclick="return del()">📝</button></a></td>
					<td><a href="feedback/delete/?id=${value.feedbackId}"><button
								class="delt" onclick="return del()">✂</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div class="row justify-content-center">
		<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">

			<c:choose>
				<c:when test="${page.number != pageNumber-1}">
					<a href="${contextRoot}/back/allFeedback?p=${pageNumber}"><c:out
							value="${pageNumber}" /></a>
				</c:when>

				<c:otherwise>
					<c:out value="${pageNumber}" />
				</c:otherwise>
			</c:choose>

			<c:if test="${pageNumber != page.totalPages}">
   |&nbsp
   </c:if>

		</c:forEach>
	</div>
</div>

<jsp:include page="layout/footer.jsp" />
