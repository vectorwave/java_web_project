
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<h3 style="text-align: center">所有會員資訊</h3>


<%-- <form:form method="post" action="${contextRoot}/member/findall modelAttribute="member"> --%>

	<div class="row">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" >ID</th>
<!-- 					<th scope="col">編號</th> -->
					<th scope="col">姓名</th>
					<th scope="col">生日</th>
					<th scope="col">手機號碼</th>
					<th scope="col">電子信箱</th>
					<th scope="col">地址</th>
					<th scope="col">性別</th>
					<th scope="col">會員圖片</th>
					<th scope="col">編輯</th>
					<th scope="col">刪除</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${member}" var="member">
					<tr>
						<td><c:out value="${member.accountId}" /><td hidden><c:out value="${member.accountId}" />
						<td><c:out value="${member.memberName}" />
						<td><c:out value="${member.birthDate}" />
						<td><c:out value="${member.phone}" />
						<td><c:out value="${member.email}" />
						<td><c:out value="${member.address}" />
						<td><c:out value="${member.gender}" />
						<td><img src="${contextRoot}/member/photo/${member.accountId}" width="100px" height="100px">						
						<td><a
							href='<c:out value="${contextRoot}"/>/member/edit?id=${member.accountId}'>
							<button>📝</button></a>
						<td><a
							href='<c:out value="${contextRoot}"/>/member/delete/${member.accountId}'>
							<button>🗑️</button></a> 
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
<%-- </form:form> --%>

<jsp:include page="layout/footer.jsp" />