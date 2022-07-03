
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<div class="container">
		<p />

		<div  class="row justify-content-center">
			<div class="col-9">
				<div class="card" id="cusForm">
					<div style="color: 	#3c3c3c;"  class="card-header formHead">客服表單</div>
					<div class="card-body">
						<form:form action="${contextRoot}/message/insert" class="form"
							method="GET" modelAttribute="CustomerBean">

							<div class="input-group">
								<label style="color: 	#3c3c3c;" for="exampleFormControlTextarea1" class="form-label">請選擇你/妳遇到的問題(必選):</label>
							<form:select path="serviceInfo" value="" class="form-select" aria-label="Default select example">
									<form:option value="產品問題"/>
									<form:option value="行銷活動"/>
									<form:option value="商品運送"/>
									<form:option value="交易及帳務相關"/>
									<form:option value="商品退貨"/>
									<form:option value="瑕疵問題"/>
									<form:option value="會員相關"/>
							</form:select>
						</div>
						



						<div class="mb-3 formQuestion">
							<label style="color: 	#3c3c3c;" for="exampleFormControlTextarea1" class="form-label">請詳加描述問題(非必填):</label>
							<textarea class="form-control" id="exampleFormControlTextarea1" path="description" value="" placeholder="請詳加描述您的問題..." rows="3"></textarea>
						  </div>
						
							
<!-- 請詳加描述問題(非必填):	<form:input type="textarea" path="description" value="" placeholder="請詳加描述您的問題..."/> -->
						


							<div class="mb-3 row">
								<label style="color: 	#3c3c3c;" for="inputPassword" class="col-sm-2 col-form-label">請輸入你/妳的名字(必填):</label>
								<div class="col-sm-10">
								  <input class="form-control" type="text" name="name" value="" placeholder="請輸入中文名字..." pattern="[\u4e00-\u9fa5]{2,4}" oninvalid="validatelt(this,'真实姓名必须是中文，且长度不小于2，不大于4')" required>
								</div>
							  </div>
<!-- 
請輸入你/妳的名字(必填):	<input type="text" name="name" value="" placeholder="請輸入中文名字..." pattern="[\u4e00-\u9fa5]{2,4}" oninvalid="validatelt(this,'真实姓名必须是中文，且长度不小于2，不大于4')" required/> -->


							<div class="mb-3 row">
								<label style="color: 	#3c3c3c;" for="inputPassword" class="col-sm-2 col-form-label">請輸入你/妳的聯絡方式(必填):</label>
								<div class="col-sm-10">
								<input class="form-control" type="text" name="phone" value="" placeholder="請輸入10碼聯絡方式..." pattern="09\d{2}\-?\d{3}\-?\d{3}" required>
								</div>
							</div>

							<br>
<!-- 請輸入你/妳的聯絡方式(必填):	<input type="text" name="phone" value="" placeholder="請輸入10碼聯絡方式..." pattern="09\d{2}\-?\d{3}\-?\d{3}" required/> -->
							<br>

							
							<div class="mb-3 row">
								<label style="color: #3c3c3c;" for="inputPassword" class="col-sm-2 col-form-label">請輸入你/妳的電子郵件信箱(非必填):</label>
								<div class="col-sm-10">
								<input class="form-control" type="email" name="email" value="" placeholder="請輸入您的email..." required>
								</div>
							</div>

<!-- 請輸入你/妳的電子郵件信箱(非必填):	<input type="email" name="email" value="" placeholder="請輸入您的email..." required/> -->
							<br>	
							
						<div class="mb-3 row">	
							<label style="color: #3c3c3c;" for="inputPassword" class="col-sm-2 col-form-label">請選擇方便連絡時段(必選):</label>
							上午&nbsp<input checked="true"  class="pixel-radio btcolor" type="radio" id="black" name="preferedContactTime" value="上午">
							下午&nbsp<input  class="pixel-radio btcolor" type="radio" id="black" name="preferedContactTime" value="下午">
						</div>
						<button  class="primary-btn subForm" type="submit" name="submit" value="送出表單" onclick="SendMail()">送出表單</button>
							
						</form:form>
					</div>

				</div>

			</div>

		</div>
	</div>
	<!-- 引入jquery -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
function SendMail(){
	$.ajax({
		url:'${contextRoot}/message/sendMail',
		type:'GET'
		
	});
}

</script>
  

  
 <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> 
<jsp:include page="layout/footer.jsp" />