<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../layout/header.jsp" />
<title>客服表單</title>
<script type="text/javascript">
	
</script>
<style>
td {
	text-align: center;
	vertical-align: middle;
}
</style>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
	;
	function del() {
		var msg = "您真的確定要刪除嗎？\n\n請確認！";
		if (confirm(msg) == true) {
			return true;
		} else {
			return false;
		}
	}
</script>
<div class="content-container" >
    
<fieldset style="height:450px;width:300px;">

<legend style="position: relative;top: 30px;right: 70px">客服管理</legend>

<div class="tableContainer" >
	

				<table style="position: relative;top: 30px;right:100px;width:10px">
									<tr class="thContent">
										<th >Id</th>
										<th>ServiceInfo</th>
										<th>Description</th>
										<th>Name</th>
										<th>Phone</th>
										<th>Email</th>
									<!--  	<th>PreferedContactTime</th>-->
										<th>ProcessStatus</th>
										<th>Remark</th>
										<th>CreatedAt</th>
										
										<th>Update</th>
										<th>Delete</th>
									</tr>
						<c:forEach items="${allCus}" var="customerBean">
						<tr class="tdContent">
											<td style="">${customerBean.id}</td>
											<td style="">${customerBean.serviceInfo}</td>
											<td style="">${customerBean.description}</td>
											<td style="">${customerBean.name}</td>
											<td style="">${customerBean.phone}</td>
											<td style="">${customerBean.email}</td>
											<!-- <td style="">${customerBean.preferedContactTime}</td>-->
											<td style="">${customerBean.processStatus}</td>
											<td style="">${customerBean.remark}</td>
											<td style="">${customerBean.createdAt}</td>
											
												
											<td style="">
												<div class="btn-container">
													<!-- 修改 -->
													<form method="get"
														action="${contextRoot}/message/editForm${customerBean.id}">
														<button class="btn btn-outline-primary edit" data-target="sample-modal-2" type="submit">回覆
															
														</button>
													</form>
												</div>
											</td>
											<td style="">
												<div class="btn-container">
												<form id="deleteForm" method="get"
													action="${contextRoot}/message/delete${customerBean.id}">
													<button class="btn btn-outline-danger delete" data-target="sample-modal"
														type="button">刪除
														
													</button>
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
	
	
<jsp:include page="../layout/footer.jsp" />
