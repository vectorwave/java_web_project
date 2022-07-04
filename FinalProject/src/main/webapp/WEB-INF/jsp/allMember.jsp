
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<h3 style="text-align: center">所有會員資訊</h3>
<form action="/jotravel/member/findall" method="get" >
<input type="text" name="key" placeholder="搜尋" id="key"> <input type="submit" id="send" value="🔍" > <a href="http://localhost:8081/jotravel/member/findall"><input type="button" value="全部帳號" ></a>  


<%-- <form:form method="post" action="${contextRoot}/member/findall modelAttribute="member"> --%>
<input id=accountId type="hidden" name="accountId" value="${loginuser.accountId}" />
	<div class="row">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" >ID</th>
<!-- 					<th scope="col">編號</th> -->
					<th scope="col">姓名</th>
					<th scope="col">生日</th>
					<th scope="col">手機號碼</th>
					<th scope="col">電子信箱</th>
					<th scope="col">地址</th>
					<th scope="col">性別</th>
					<th scope="col">會員圖片</th>
					<th scope="col">編輯</th>
					<th scope="col">刪除</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${member}" var="member">
					<tr>
						<td><c:out value="${member.account.accountId}" /><td hidden><c:out value="${member.account.accountId}" />
						<td><c:out value="${member.memberName}" />
						<td><c:out value="${member.birthDate}" />
						<td><c:out value="${member.phone}" />
						<td><c:out value="${member.email}" />
						<td><c:out value="${member.address}" />
						<td><c:out value="${member.gender}" />
						<td><img src="${contextRoot}/member/photo/${member.account.accountId}" width="100px" height="100px">						

<!-- 						<td><a -->
<%-- 							href='<c:out value="${contextRoot}"/>/member/edit?id=${member.account.accountId}'> --%>
<!-- 							<button type="button">📝</button></a> -->
<!-- 						<td><a -->
<%-- 							href='<c:out value="${contextRoot}"/>/member/delete/${member.memberId}'> --%>
<!-- 							<button type="button" onclick="submitForm(form)">🗑️</button></a>  -->
						<td><button type="button" class="delt" onclick="upd('${member.account.accountId}')" >📝</button></td> 
						<td><button type="button" class="delt" onclick="del('${member.memberId}')" >🗑️</button></td>
					</tr>
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

	   document.location.href='/jotravel/member/edit?id='+e;
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

	   document.location.href='/jotravel/member/delete/'+e;
	    }else if (result.isDenied) {
	     
	       return false;
	     }
	  });
	 }
	 
</script>


<jsp:include page="layout/footer.jsp" />