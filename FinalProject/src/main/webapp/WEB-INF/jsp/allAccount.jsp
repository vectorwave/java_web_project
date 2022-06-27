
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<h3 style="text-align: center">所有會員</h3>

  <input id=accountId name="accountId" value="${loginuser.accountId}" />

<%-- <form:form method="post" action="${contextRoot}/member/findall modelAttribute="member"> --%>

	<div class="row">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" >ID</th>
<!-- 					<th scope="col">編號</th> -->
					<th scope="col">帳號</th>
					<th scope="col">密碼</th>
					<th scope="col">身分</th>
					<th scope="col">帳號狀態</th>
					<th scope="col">創建時間</th>
					<th scope="col">修改</th>
					<th scope="col">刪除</th>
				
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${account}" var="account">
					<tr>
						<td><c:out value="${account.accountId}" /><td hidden><c:out value="${account.accountId}" />
						<td><c:out value="${account.accountName}" />
						<td><c:out value="${account.password}" />
						<td><c:out value="${account.title}" />
						<td><c:out value="${account.status}" />
						<td><c:out value="${account.signupDate}" />
						<td><a
							href='<c:out value="${contextRoot}"/>/login/edit?id=${account.accountId}'>
							<button>📝</button></a>
						<td><a
							href='<c:out value="${contextRoot}"/>/login/delete/${account.accountId}'>
							<button>🗑️</button></a> 
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
<%-- </form:form> --%>

<jsp:include page="layout/footer.jsp" />