<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<jsp:include page="layout/header.jsp" />
<meta name="author" content="http://www.softwhy.com/" />
<title>JoTravel 訂單數據</title>
<div class="container">
<br/>
	<section style="text-align: center">
		<div style="float: left">
			<h3>各金流數量</h3>
			<canvas id="cashFlow"></canvas>
		</div>
		<div style="float: left">
			<h3>各地區收益</h3>
			<canvas id="income"></canvas>
		</div>
	</section>
</div>

<script>
	
</script>
<script>
	let orderData = null;
	jQuery.ajax({
		url : '${contextRoot}/order/count/cf',
		async : false,
		success : function(res) {
			orderData = res;
		},
		error : function(err) {
			console.log(err);
		}
	});

	var ctx = $("#cashFlow"), example = new Chart(ctx,
			{
				type : "pie", // 圖表類型
				data : {
					labels : [ "WebATM", "自動櫃員機", "信用卡", "超商代碼", "超商條碼",
							"Apple 手機支付" ], // 標題
					datasets : [ {
						label : "", // 標籤
						data : orderData, // 資料
						backgroundColor : [ // 背景色
						"#FF0000", "#00FF00", "#0000FF", "#BE77FF", "#844200",
								"#FFE153" ],
						borderWidth : 1
					// 外框寬度
					} ]
				}
			});
	let incomeData = null;
	jQuery.ajax({
		url : '${contextRoot}/order/count/income',
		async : false,
		success : function(res) {
			let area = [ 0, 0, 0, 0, 0 ];
			res.forEach(function(x) {
				if (x[1] == "東部") {
					area[0] = x[0]
				}
				if (x[1] == "南部") {
					area[1] = x[0]
				}
				if (x[1] == "西部") {
					area[2] = x[0]
				}
				if (x[1] == "北部") {
					area[3] = x[0]
				}
				if (x[1] == "外島") {
					area[4] = x[0]
				}
			});
			incomeData = area;
		},
		error : function(err) {
			console.log(err);
		}
	});
	var ctx2 = $("#income"), example = new Chart(ctx2, {
		type : "pie", // 圖表類型
		data : {
			labels : [ "東部", "南部", "西部", "北部", "外島" ], // 標題
			datasets : [ {
				label : "", // 標籤
				data : incomeData, // 資料
				backgroundColor : [ // 背景色
				"#FF0000", "#00FF00", "#0000FF", "#BE77FF", "#844200", ],
				borderWidth : 1
			// 外框寬度
			} ]
		}
	});
</script>
<jsp:include page="layout/footer.jsp" />