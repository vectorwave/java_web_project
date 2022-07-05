<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>
<script type="text/javascript" src="${contextRoot}/js/chart.min.js"></script>
<div class="w-25 h-25 py-2">
<div class="text-center">各金流訂單數量</div>
<canvas id="example"></canvas>
</div>

<script>
</script>
  <script>
  let orderData = null;
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
  	var ctx = $( "#example" ),
  		example = new Chart(ctx, {
  			type: "pie", // 圖表類型
  			data: {
  				labels: [ "WebATM", "自動櫃員機" , "信用卡", "超商代碼","超商條碼","Apple 手機支付"], // 標題
  				datasets: [{
  					label: "# of Votes", // 標籤
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