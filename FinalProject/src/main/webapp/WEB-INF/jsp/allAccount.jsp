
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<style>
.div_td_pad {
    max-width: 600px;
    overflow-wrap: break-word;
}
</style>
<h3 style="text-align: center">所有帳號</h3>
<form action="/jotravel/login/findall" method="get" >
<input type="text" name="key" placeholder="搜尋帳號" id="key"> <input type="submit" id="send" value="🔍" > <a href="http://localhost:8081/jotravel/login/findall"><input type="button" value="全部帳號" ></a>  
</form>

  <input id=accountId name="accountId" value="${loginuser.accountId}" />

<%-- <form:form method="post" action="${contextRoot}/member/findall modelAttribute="member"> --%>

	<div class="row">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" >ID</th>
<!-- 					<th scope="col">編號</th> -->
					<th scope="col">帳號</th>
					<th scope="col">密碼</th>
					<th scope="col">身分</th>
					<th scope="col">帳號狀態</th>
					<th scope="col">創建時間</th>
					<th scope="col">修改</th>
					<th scope="col">刪除</th>
				
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${account}" var="account">
					<tr>
						<td><c:out value="${account.accountId}" /><td hidden><c:out value="${account.accountId}" />
						<td><c:out value="${account.accountName}" />
						<td class="div_td_pad"><c:out value="${account.password}"/>
						<td><c:out value="${account.title}" />
						<td><c:out value="${account.status}" />
						<td><c:out value="${account.signupDate}" />
<!-- 						<td><a -->
<%-- 							href='<c:out value="${contextRoot}"/>/login/edit?id=${account.accountId}'> --%>
<!-- 							<button>📝</button></a> -->
<!-- 						<td><a -->
<%-- 							href='<c:out value="${contextRoot}"/>/login/delete/${account.accountId}'> --%>
<!-- 							<button onclick="submitForm(form)">🗑️</button></a>  -->
<!-- 					</tr> -->
	<td><button type="button" class="delt" onclick="upd('${account.accountId}')" >📝</button></td> 
						<td><button type="button" class="delt" onclick="del('${account.accountId}')" >🗑️</button></td>
				</c:forEach>

			</tbody>
		</table>
	</div>
<%-- </form:form> --%>
 <script type="text/javascript">
 function upd(e){
	  Swal.fire({
	    title: '確認修改嗎?',
	  //   text: "You won't be able to revert this!",
	    icon: 'question',
	    showCancelButton: true,
	    confirmButtonColor: '#3085d6',
	    cancelButtonColor: '#d33',
	    confirmButtonText: 'Yes!',
	    
	  }).then((result) => {
	    if (result.isConfirmed) {

	   document.location.href='/jotravel/login/edit?id='+e;
	    }else if (result.isDenied) {
	       
	       return false;
	     }
	  });
	 }
	 
	 function del(e){
	  Swal.fire({
	    title: '確認刪除嗎?',
	  //   text: "You won't be able to revert this!",
	    icon: 'question',
	    showCancelButton: true,
	    confirmButtonColor: '#3085d6',
	    cancelButtonColor: '#d33',
	    confirmButtonText: 'Yes!',
	    
	  }).then((result) => {
	    if (result.isConfirmed) {

	   document.location.href='/jotravel/login/delete/'+e;
	    }else if (result.isDenied) {
	     
	       return false;
	     }
	  });
	 }
</script>

<jsp:include page="layout/footer.jsp" />