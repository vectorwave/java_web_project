<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<jsp:include page="layout/header.jsp" />
<meta name="author" content="http://www.softwhy.com/" />
<title>JoTravel 訂單數據</title>
<div class="container">
<div class="justify-content-center" style="font-size:50px">
	<h1 class="text-center">各金流訂單數量</h1>
	<canvas id="cashFlow" width="800" height="450"></canvas>
	
</div>	

</div>

<script>
</script>
  <script>
  let orderData = null;
  let apmData = null;
  jQuery.ajax({
		url: '${contextRoot}/order/count/cf',
		async: false,
		success: function(res) {
			orderData = res;
		},
		error: function(err) {
			console.log(err);
		}
	});
  
  	var ctx = $( "#cashFlow" ),
  		example = new Chart(ctx, {
  			type: "pie", // 圖表類型
  			data: {
  				labels: [ "WebATM", "自動櫃員機" , "信用卡", "超商代碼","超商條碼","Apple 手機支付"], // 標題
  				datasets: [{
  					label: "", // 標籤
  					data: orderData, // 資料
  					backgroundColor: [ // 背景色
  					"#FF0000",
  					"#00FF00",
  					"#0000FF",
  					"#BE77FF",
  					"#844200",
  					"#FFE153"
  					],
  					borderWidth: 1 // 外框寬度
  				}]
  			}
  		});
  	
  </script>
<jsp:include page="layout/footer.jsp" />