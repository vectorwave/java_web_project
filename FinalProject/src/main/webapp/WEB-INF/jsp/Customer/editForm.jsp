<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<jsp:include page="../layout/header.jsp" />
<div class="content-container" style="text-align: center"></div>



<div class="content-container" style="text-align: center">

	<div align="center">

		<fieldset id="formFieldset">

			<legend id="guideLegend">客服單詳細資訊</legend>

</fieldset>
			<div id="GIFormContainer1">

</div>
</div>
</div>
				<div align="center">
					<table>


						<c:forEach items="${allCus}" var="customerBean">
							<c:choose>
								<c:when test="${customerBean.id == id}">
									<form:form id="editForm" method="GET"
										action="${contextRoot}/message/edit"
										modelAttribute="customerBean2">
										<tbody>

											<tr>
												<td class="formLabel"><label class="GIFLabel">Id</label></td>
												<td class="formContent"><form:input
														readonly="true" class="inputBox1" path="id"
														value="${customerBean.id}" />
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">ServiceInfo</label></td>
												<td class="formContent">${customerBean.serviceInfo}<form:input
														type="hidden" path="serviceInfo"
														value="${customerBean.serviceInfo}" />
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">Description</label></td>
												<td class="formContent">${customerBean.description}<form:input
														type="hidden" path="description"
														value="${customerBean.description}" />
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">Name</label></td>
												<td class="formContent">${customerBean.name}<form:input
														type="hidden" path="name" value="${customerBean.name}" />
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">Phone</label></td>
												<td class="formContent">${customerBean.phone}<form:input
														type="hidden" path="phone" value="${customerBean.phone}" />
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">Email</label></td>
												<td class="formContent">${customerBean.email}<form:input
														type="hidden" path="email" value="${customerBean.email}" />
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">PreferedContactTime</label></td>
												<td class="formContent">
													${customerBean.preferedContactTime} <form:input
														type="hidden" path="preferedContactTime"
														value="${customerBean.preferedContactTime}" />
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">ProcessStatus</label></td>
												<td class="formContent"><form:select
														path="processStatus" value="${customerBean.processStatus}"
														class="input">
														<option value="處理中">處理中</option>
														<option value="已完成">已完成</option>

													</form:select></td>
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">Remark</label></td>
												<td class="formContent"><form:input type="text"
														path="remark" value="${customerBean.remark}" class="input" />
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">CreatedAt</label></td>
												<td class="formContent">${customerBean.createdAt}<form:input
														type="hidden" path="createdAt"
														value="${customerBean.createdAt}" />
											</tr>
											<tr>
												<td class="formLabel"><label class="GIFLabel">ModifiedAt</label></td>
												<td class="formContent">${customerBean.modifiedAt}</td>
											</tr>

											<tr>
												<td>
													<div class="btn-container">
														<form method="get"
															action="${contextRoot}/message/editForm?id=${customerBean.id}">
															<button class="btn btn-outline-primary edit"
																type="button">確認修改</button>
														</form>
														<button type="button" onclick="deleteGuide()"
															class="btn btn-outline-danger">刪除</button>
														<button type="button" class="btn btn-outline-secondary"
															onClick="javascript:history.back()">返回</button>
													</div>
												</td>
											</tr>


										</tbody>

									</form:form>
								</c:when>
								
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
                  Swal.fire('已成功刪除！', '', 'success').then(() => { location = '${contextRoot}/message/delete${customerBean.id}' });

                } else if (result.isDenied) {

                  return false;
                }
              })
            }
          </script>
						</c:forEach>


					</table>
				</div>


				<jsp:include page="../layout/footer.jsp" />