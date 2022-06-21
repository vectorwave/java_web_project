<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>addcart</title>
			<script src="${contextRoot}/js/js.cookie.min.js"></script>
			<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
		</head>

		<body>
			<ul id="cart"></ul>
			<form id="addOrderDetail">
				<input type="text" name="productId" /> <input type="text" name="amount" /> <input type="date"
					name="date" /> <input type="text" name="days">
			</form>
			<button onclick="addToCart($('#addOrderDetail').serializeObject())">加入購物車</button>
			<button onclick="getCookie()">檢查</button>
			
			<form id="order">
				<input type="text" name="cashFlow">
				<input type="text" name="status">
			</form>
			<button onclick="postOrder()">*發送</button>
		</body>
		<script>
		function postOrder() {
			var order = {"cashFlow":null,"status":null,"orderDetails":[{"amount":4,"product":{"productId":2}}]};
			$.ajax({
				url: 'order',
				method: 'post',
				dataType:'JSON',
				contentType:"application/json",
				data: order,
				success: () => { console.log('成功') },
				error: () => { console.log('錯誤') }
			})
		};
			$.fn.serializeObject = function () {
				var o = {};
				var a = this.serializeArray();
				$.each(a, function () {
					if (o[this.name]) {
						if (!o[this.name].push) {
							o[this.name] = [o[this.name]];
						}
						o[this.name].push(this.value || '');
					} else {
						o[this.name] = this.value || '';
					}
				});
				return JSON.stringify(o);
			};
			//將新的資料加入購物車Cookie
			function addToCart(item) {
				if (Cookies.get("cart") == undefined) {
					Cookies.set("cart", item,{sameSite:"None"});
				} else {
					temp = Cookies.get("cart");
					temp = temp + "," + item;
					Cookies.set("cart", temp,{secure:"false",sameSite:"None"});
				}
			}
			function getCookie(){
				console.log(Cookies.get("cart"));
			}
		</script>

		</html>