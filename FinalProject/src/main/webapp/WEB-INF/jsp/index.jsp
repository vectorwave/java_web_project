<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<jsp:include page="layout/header.jsp" />
<meta name="author" content="http://www.softwhy.com/" />
<title>JoTravel 後臺管理系統</title>
<!-- <div class="container" >
<div class="justify-content-center" style="font-size:50px">

	<h1>JoTravel 後臺管理系統</h1>
	<table>
		<th>訂單數量</th>
		<tr>
			<td>三十筆</td>
		
		</tr>
	</table>	
	<canvas id="pie-chart" width="800" height="450"></canvas>
	
</div>	

</div> -->
	<!-- <script>

	
	new Chart(document.getElementById("pie-chart"), {
    type: 'pie',
    data: {
      labels: ["會員數", "商家數", "出團數", "出團樂趣", ""],
      fontSize:30,
      datasets: [{
        label: "Population (millions)",
        backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
        data: [600,100,1200,554,433]
      }]
    },
    options: {
      title: {
        display: true,
        text: 'JoTravel 揪遊四國 平台數據' ,
        fontSize:30,
        
      }
    }
});
</script> -->
<div style="margin-top:600px">
<h1 class="text-center mt-5">每月旅遊人次</h1>
<canvas id="AccountPerMonth" width="150" height="50" class="mb-5"></canvas></div>
<script>
$(document.body).css({'background-image':'url("${contextRoot}/assets/img/little_island.jpg")','background-size':'cover','opacity':1.4});
jQuery.ajax({
	url: '${contextRoot}/order/count/apm/2022',
	async: false,
	success: function(res) {
		let amount = [0,0,0,0,0,0,0,0,0,0,0,0];
		res.forEach(function(x){
			amount[x[1]-1] = x[0];
		});
		apmData = amount;
	},
	error: function(err) {
		console.log(err);
	}
});
var apm = $( "#AccountPerMonth" ),
example = new Chart(apm, {
	type: "bar", // 圖表類型
	data: {
		labels: [ "1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月",], // 標題
		datasets: [{
			label: "累計人次", // 標籤
			data: apmData, // 資料
			borderWidth: 1, // 外框寬度
			backgroundColor:'#C6A300',
			
		}]
	}
});
</script>
	<jsp:include page="layout/footer.jsp" />