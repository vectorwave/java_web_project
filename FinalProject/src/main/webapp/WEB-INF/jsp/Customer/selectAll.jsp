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
<!-- Tailwind is included -->
<!-- <link rel="stylesheet" href="${contextRoot}/resources/backstage/css/main.css?v=1628755089081"> -->
<!--<link rel="stylesheet"
	href="${contextRoot}/resources/backstage/css/main.css">
<link rel="apple-touch-icon" sizes="180x180"
	href="${contextRoot}/resources/backstage/apple-touch-icon.png" />
<link rel="icon" type="image/png" sizes="32x32"
	href="${contextRoot}/resources/backstage/favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16"
	href="${contextRoot}/resources/backstage/favicon-16x16.png" />
<link rel="mask-icon"
	href="${contextRoot}/resources/backstage/safari-pinned-tab.svg"
	color="#00b4b6" />

<meta name="description" content="Admin One - free Tailwind dashboard">

<meta property="og:url"
	content="https://justboil.github.io/admin-one-tailwind/">
<meta property="og:site_name" content="JustBoil.me">
<meta property="og:title" content="Admin One HTML">
<meta property="og:description"
	content="Admin One - free Tailwind dashboard">
<meta property="og:image"
	content="https://justboil.me/images/one-tailwind/repository-preview-hi-res.png">
<meta property="og:image:type" content="image/png">
<meta property="og:image:width" content="1920">
<meta property="og:image:height" content="960">

<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:title" content="Admin One HTML">
<meta property="twitter:description"
	content="Admin One - free Tailwind dashboard">
<meta property="twitter:image:src"
	content="https://justboil.me/images/one-tailwind/repository-preview-hi-res.png">
<meta property="twitter:image:width" content="1920">
<meta property="twitter:image:height" content="960">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>-->
<style>
td, input {
	width: 150px
}

#inputSearch {
	width: 150px;
	height: 25px
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

	

		<!-- 插入上導覽列與左導覽列 -->
		

		<!-- 章節層級 
		<section class="is-title-bar">
			<div
				class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
				<ul>
					<li>管理系統</li>
					<li>客服管理</li>
				</ul>
			
			</div>
		</section>

		<!-- 核心內容標題 -->
		<div class="content-container">
    
<fieldset style="height:450px;width:600px">

<legend>商家管理 </legend>

<div class="tableContainer" >

		<!-- 原核心內容的 section 開始 -->
		
								<form action="${contextRoot}/message/findByServiceInfoLike">
									特定問題查詢:<input id="inputSearch" class="input" type="text"
										name="findByServiceInfoLike"> <input type="submit"
										value="送出">
								</form>

								<table style="position: relative;top: 30px;right: 80px;width:10px">
									<tr class="thContent">
										<th >Id</th>
										<th>ServiceInfo</th>
										<th>Description</th>
										<th>Name</th>
										<th>Phone</th>
										<th>Email</th>
										<th>PreferedContactTime</th>
										<th>ProcessStatus</th>
										<th>Remark</th>
										<th>CreatedAt</th>
										<th>ModifiedAt</th>
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
											<td style="">${customerBean.preferedContactTime}</td>
											<td style="">${customerBean.processStatus}</td>
											<td style="">${customerBean.remark}</td>
											<td style="">${customerBean.createdAt}</td>
											<td style="">${customerBean.modifiedAt}</td>
					
												
											<td style="">
												<div class="buttons right nowrap">
													<!-- 修改 -->
													<form method="get"
														action="${contextRoot}/message/editForm${customerBean.id}">
														<button class="btn btn-outline-dark" data-target="sample-modal-2" type="submit">回覆
															<span class="icon"><i class="mdi mdi-eye"></i></span>
														</button>
													</form>
												</div>
											</td>
											<td style="border-radius: 0px 20px 20px 0px;width:130px">
												<!-- onclick="return confirm('確認刪除')" --> <!-- 刪除 -->
												<form id="deleteForm" method="get"
													action="${contextRoot}/message/delete${customerBean.id}">
													<button class="btn btn-outline-dark" data-target="sample-modal"
														type="button">刪除
														<span class="icon"><i class="mdi mdi-trash-can"></i></span>
													</button>
												</form>
											</td>
										</tr>
									</c:forEach>

									<%-- 					</form> --%>
								</table>
							</div>
				</fieldset>
		<div id="container"
			style="width: 550px; height: 100px; margin: 10px"></div>
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
		<div class="row justify-content-center" style="text-align:center; margin-top: 10px;">
			<div class="col-7">
		
				<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
					<c:choose>
						<c:when test="${page.number != pageNumber -1}">
		
							<a href="${contextRoot}/staff/message/selectAll?p=${pageNumber}"><button type="button" class="btn btn-outline-secondary"><c:out value="${pageNumber}"/>  </button></a>
		
						</c:when>
						<c:otherwise>
		
						<a class="btn btn-secondary disabled" role="button" aria-disabled="true"> ${pageNumber} </a>
		
						<c:set var="pgn" value="${page.number +1}" scope="session"/>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>
		
		<!-- 插入頁腳 -->
		

		<div id="sample-modal" class="modal">
			<div class="modal-background --jb-modal-close"></div>
			<div class="modal-card">
				<header class="modal-card-head">
					<p class="modal-card-title">Sample modal</p>
				</header>
				<section class="modal-card-body">
					<p>
						Lorem ipsum dolor sit amet <b>adipiscing elit</b>
					</p>
					<p>This is sample modal</p>
				</section>
				<footer class="modal-card-foot">
					<button class="button --jb-modal-close">Cancel</button>
					<button class="button red --jb-modal-close">Confirm</button>
				</footer>
			</div>
		</div>

		<div id="sample-modal-2" class="modal">
			<div class="modal-background --jb-modal-close"></div>
			<div class="modal-card">
				<header class="modal-card-head">
					<p class="modal-card-title">Sample modal</p>
				</header>
				<section class="modal-card-body">
					<p>
						Lorem ipsum dolor sit amet <b>adipiscing elit</b>
					</p>
					<p>This is sample modal</p>
				</section>
				<footer class="modal-card-foot">
					<button class="button --jb-modal-close">Cancel</button>
					<button class="button blue --jb-modal-close">Confirm</button>
				</footer>
			</div>
		</div>

	</div>

	<!-- Scripts below are for demo only -->
	<script type="text/javascript"
		src="${contextRoot}/resources/backstage/js/main.min.js?v=1628755089081"></script>



	<script>
		!function(f, b, e, v, n, t, s) {
			if (f.fbq)
				return;
			n = f.fbq = function() {
				n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
						.push(arguments)
			};
			if (!f._fbq)
				f._fbq = n;
			n.push = n;
			n.loaded = !0;
			n.version = '2.0';
			n.queue = [];
			t = b.createElement(e);
			t.async = !0;
			t.src = v;
			s = b.getElementsByTagName(e)[0];
			s.parentNode.insertBefore(t, s)
		}(window, document, 'script',
				'https://connect.facebook.net/en_US/fbevents.js');
		fbq('init', '658339141622648');
		fbq('track', 'PageView');
	</script>

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
	</script>

	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=658339141622648&ev=PageView&noscript=1" />
	</noscript>


	<!-- Icons below are for demo only. Feel free to use any icon pack. Docs: https://bulma.io/documentation/elements/icon/ -->
<jsp:include page="../layout/footer.jsp" />

</body>
</html>