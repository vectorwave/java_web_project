<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>發送訂單</title>
			<script src="${contextRoot}/js/js.cookie.min.js"></script>
			<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
		</head>

		<body>
			<form id="order">
				<input type="text" name="cashFlow">
				<input type="text" name="status">
			</form>
			<button onclick="postOrder()"></button>
		</body>
		<script>
			function postOrder(order) {
				$.ajax({
					url: 'localhost:8080/jotravel/order',
					method: 'POST',
					data: order,
					success: () => { console.log('成功') },
					error: () => { console.log('失敗') }
				})
			}

		</script>

		</html>