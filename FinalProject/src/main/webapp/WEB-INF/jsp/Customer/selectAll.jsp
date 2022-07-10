<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../layout/header.jsp" />
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en" class="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>客服管理列表</title>

<style>
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
    display: block;
}
body {
    line-height: 1;
}
ol, ul {
    list-style: none;
}
blockquote, q {
    quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
    content: '';
    content: none;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}

</style>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-130795909-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config', 'UA-130795909-1');
</script>
<script src="http://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
</head>
<body>


		<!-- 核心內容標題 -->

	<div class="content-container" style="margin-left:100px;width:300px">

		<fieldset style="height: 450px; width: 500px">

			<legend style="position: relative;right:100px">客服管理</legend>

			<div class="tableContainer">

				<!-- 原核心內容的 section 開始 -->

				<form action="${contextRoot}/message/findByServiceInfoLike"
					style="position: relative;right: 200px" >
					問題分類查詢:<input id="inputSearch" class="input" type="text"
						name="findByServiceInfoLike"> <input
						type="submit" value="送出">
				</form>

				<table
					style="position: relative; top: 10px; right: 200px">
					<tr class="thContent">
						<th>Id</th>
						<th>ServiceInfo</th>
						<th>Description</th>
						<th>Name</th>
						<th>Phone</th>
						<th>Email</th>
						
						<th>ProcessStatus</th>
						<th>Remark</th>
						<th>CreatedAt</th>
						<th>modifiedAt</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>

					<c:forEach items="${page.content}" var="customerBean">
						<tr class="tdContent">
							<td style="">${customerBean.id}</td>
							<td style="">${customerBean.serviceInfo}</td>
							<td style="">${customerBean.description}</td>
							<td style="">${customerBean.name}</td>
							<td style="">${customerBean.phone}</td>
							<td style="">${customerBean.email}</td>
							
							<td style="">${customerBean.processStatus}</td>
							<td style="">${customerBean.remark}</td>
							<td style="">${customerBean.createdAt}</td>
							<td style="">${customerBean.modifiedAt}</td>
							


							<td>
								<div class="btn-container">
									<form method="get"
										action="${contextRoot}/message/editForm${customerBean.id}">
										<button class="btn btn-outline-primary edit" type="submit">回覆</button>
									</form>
								</div>

							</td>

							<td>
								<div class="btn-container">
								<form method="get" action="${contextRoot}/message/delete${customerBean.id}">
									<button type="submit" 
										class="btn btn-outline-danger delete">刪除</button>
</form>
								</div>
							</td>
						</tr>
					</c:forEach>

					<%-- 					</form> --%>
				</table>
			</div>
		</fieldset>
		</div>
		<div class="row justify-content-center"
			style="text-align: center; margin-top: 110px;">
			<div class="col-7">

				<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
					<c:choose>
						<c:when test="${page.number != pageNumber -1}">

							<a href="${contextRoot}/staff/message/selectAll?p=${pageNumber}"><button
									type="button" class="btn btn-outline-secondary">
									<c:out value="${pageNumber}" />
								</button></a>

						</c:when>
						<c:otherwise>

							<a class="btn btn-secondary disabled" role="button"
								aria-disabled="true"> ${pageNumber} </a>

							<c:set var="pgn" value="${page.number +1}" scope="session" />
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>
		<div id="container" style="width: 550px; height: 100px; margin: 10px"></div>
						<script type="text/javascript">
	
		$(".delete").click(function(){
			Swal.fire({
				  title: '確定要刪除嗎?',
				  text: "刪除後無法再回復!",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: '是的, 我要刪除!'
				}).then((result) => {
				  if (result.isConfirmed) {
				    Swal.fire(
				      '已刪除!',
				      '資料已刪除',
				      '刪除成功'
				    )
				setTimeout(deleteForm,1000)
				  }
				})
				
		})
		
		function deleteForm(){
			
			
			$("#deleteForm").submit();
		}
						
						<script>
            function deleteGuide() {
              Swal.fire({
                title: '確認刪除？',
                showDenyButton: true,
                confirmButtonText: '確認',
                denyButtonText: '取消',
              }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                  // 		    Swal.fire('Saved!', '', 'success')
                  Swal.fire('已成功刪除！', '', 'success')

                } else if (result.isDenied) {

                  return false;
                }
              })
            }
          </script>

		<script>
$(document).ready(function() {  
   var chart = {
       plotBackgroundColor: null,
       plotBorderWidth: null,
       plotShadow: false
   };
   var title = {
      text: '截至目前客服問題分類'   
   };      
   var tooltip = {
      pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
   };
   var plotOptions = {
      pie: {
         allowPointSelect: true,
         cursor: 'pointer',
         dataLabels: {
            enabled: true,
            format: '<b>{point.name}%</b>: {point.percentage:.1f} %',
            style: {
               color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
            }
         }
      }
   };
   

   let requestData;
   
   $.ajax({
	   url: "${contextRoot}/pie",
	   method: "GET",
	   success: function(map) {
		   requestData = Object.entries(map);
		   var series= [{
			      type: 'pie',
			      name: 'Browser share',
			      data: requestData
			   }];     
			      
			   var json = {};   
			   json.chart = chart;
			   json.title = title;     
			   json.tooltip = tooltip;  
			   json.series = series;
			   json.plotOptions = plotOptions;
			   $('#container').highcharts(json);  
	   }
   });

   var pg='${page.number +1}';



});
</script>
		<!-- 原核心內容的 section 結束 -->
		

	<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
	<jsp:include page="../layout/footer.jsp" />

</body>
</html>