<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<jsp:include page="../layout/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>客服系統</title>
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
<meta property="twitter:image:height" content="960">--!>
<style>
td, input {
	width: 100px
}
</style>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-130795909-1"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>	
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());
    gtag('config', 'UA-130795909-1');
  </script>
<script src="http://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>

</head>
<body>
	

		<!-- 章節層級 -->
		<section class="is-title-bar">
			<div
				class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
				<ul>
					<li>管理系統</li>
					<li>客服資訊</li>
				</ul>

			</div>
		</section>

		<!-- 核心內容標題 -->
		<section class="is-hero-bar">
			<div
				class="flex flex-col md:flex-row items-center justify-between space-y-6 md:space-y-0">
				<h1 class="title">修改資料</h1>

			</div>
		</section>

		<!-- 原核心內容的 section 開始 -->
		<div class="container" style="text-align: center">
			<p />
			<div class="row justify-content-center">
				<div class="col-12">
					<div class="card">
						<div class="card-header"></div>
						<div class="card-body">
							<table border="1">
								<tr style="background-color: #a8fefa">
									<th style="text-align: center">Id
									<th style="text-align: center">ServiceInfo
									<th style="text-align: center">Description
									<th style="text-align: center">Name
									<th style="text-align: center">Phone
									<th style="text-align: center">Email
									<th style="text-align: center">PreferedContactTime
									<th style="text-align: center">ProcessStatus
									<th style="text-align: center">Remark
									<th style="text-align: center">CreatedAt
									<th style="text-align: center">ModifiedAt
									<th style="text-align: center">Update
								</tr>
								<c:forEach items="${allCus}" var="customerBean">
									<c:choose>
										<c:when test="${customerBean.id == id}">
											<form:form  id="editForm"  method="GET" action="${contextRoot}/message/edit"
												modelAttribute="customerBean2">
												<tr>
													<td style="text-align: center">${customerBean.id} <form:input
															type="hidden" path="id" value="${customerBean.id}" />
													<td style="text-align: center">
														${customerBean.serviceInfo} <form:input type="hidden"
															path="serviceInfo" value="${customerBean.serviceInfo}" />
													<td style="text-align: center">
														${customerBean.description} <form:input type="hidden"
															path="description" value="${customerBean.description}" />
													<td style="text-align: center">${customerBean.name} <form:input
															type="hidden" path="name" value="${customerBean.name}" />
													<td style="text-align: center">${customerBean.phone} <form:input
															type="hidden" path="phone" value="${customerBean.phone}" />
													<td style="text-align: center">${customerBean.email} <form:input
															type="hidden" path="email" value="${customerBean.email}" />
													<td style="text-align: center">
														${customerBean.preferedContactTime} <form:input
															type="hidden" path="preferedContactTime"
															value="${customerBean.preferedContactTime}" />
													<td style="text-align: center"><form:input type="text"
															path="processStatus"
															value="${customerBean.processStatus}" class="input" />
													<td style="text-align: center"><form:input type="text"
															path="remark" value="${customerBean.remark}"
															class="input" />
													<td style="text-align: center">
														${customerBean.createdAt} <form:input type="hidden"
															path="createdAt" value="${customerBean.createdAt}" />
													<td style="text-align: center">
														${customerBean.modifiedAt} <%-- 													<form:input type="hidden" path="modifiedAt" /> --%>
														<%-- 												<td style="text-align:center"><form:button type="submit">確認修改</form:button> --%>
														<%-- 									<a href="${contextRoot}/message/edit" onclick="return confirm('確認修改')">確認修改</a> --%>
													<td class="actions-cell">
														<div class="buttons right nowrap">

															<form method="get"
																action="${contextRoot}/message/editForm?id=${customerBean.id}">
																<button class="edit" data-target="sample-modal-2"
																	type="button">
																	確認修改 <span class="icon"><i class="mdi mdi-eye"></i></span>
																</button>
															</form>

														</div>
												</tr>


											</form:form>
										</c:when>
										<c:otherwise>
											<tr>
												<td style="text-align: center">${customerBean.id}
												<td style="text-align: center">${customerBean.serviceInfo}
												<td style="text-align: center">${customerBean.description}
												<td style="text-align: center">${customerBean.name}
												<td style="text-align: center">${customerBean.phone}
												<td style="text-align: center">${customerBean.email}
												<td style="text-align: center">${customerBean.preferedContactTime}
												<td style="text-align: center">${customerBean.processStatus}
												<td style="text-align: center">${customerBean.remark}
												<td style="text-align: center">${customerBean.createdAt}
												<td style="text-align: center">${customerBean.modifiedAt}

												</td>
											</tr>
										</c:otherwise>
									</c:choose>
									<script type="text/javascript">
	
		$(".edit").click(function(){
			Swal.fire({
				  title: '確定要修改嗎?',
				  text: "修改後無法再回復!",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: '是的, 我要修改!'
				}).then((result) => {
				  if (result.isConfirmed) {
				    Swal.fire(
				      '已修改!',
				      '資料已修改',
				      '修改成功'
				    )
				    setTimeout(editForm,1000)
				    
				  }else if (result.isDenied) {
						Swal.fire('修改資料未儲存', '', 'info')
				  }
				})
		})
		
		function editForm(){
			
			
			$("#editForm").submit();
		}
	</script>
								</c:forEach>
								<td><input type="button"
									onClick="javascript:history.back()" value="回上頁"></td>

								<%-- 					</form> --%>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../layout/footer.jsp" />
</body>
</html>