<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<jsp:include page="layout/header.jsp" />
<meta name="author" content="http://www.softwhy.com/" />
<title>JoTravel 後臺管理系統</title>

<div class="container">
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

</div>
	<script>

	
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
</script>
	<jsp:include page="layout/footer.jsp" />