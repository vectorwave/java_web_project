<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script>
  var button = document.querySelectorAll('#delete');
  function del(e) {
  if (confirm("確認要刪除嗎?") == true) {
   return true
//       window.location.href='deletedepot.jsp?id='+id;點確認連到下個連結
  } else {
   window.event.returnValue = false; 
  }
 };
//  button.addEventListener('click', del);
//  button.forEach(delt => {
//   delt.addEventListener('click', del);
//   });
 </script>

<div id="kkk">
<br>




  <c:forEach var="value" items="${page.content}">
   
  
    <table style="text-align:center">
<tr>
			   <th width='80'>帖子編號</th>
			   <th width='80'>帖子標題</th>
			   <th width='80'>帖子分類</th>
			   <th width='156'>帖子內容</th>
			   <th width='80'>會員ID</th>			   
<!-- 			   <th width='80'>照片ID</th> -->
			   <th width='80'>照片</th>
			   <th width='156' >更新時間</th>
			  
			   <th  width='160'colspan="2">刪除🗑️/更新📝
			</tr>
<tr>
<td><c:out value="${value.articleId}" /></td>

<td><c:out value="${value.articleTitle}" /></td>

<td><c:out value="${value.articleCategory}" /></td>

<td><c:out value="${value.articleText}" /></td>

<td><c:out value="${value.account.accountId}" /></td>

<%-- <td><c:out value="${value.picId}" /></td> --%>
<td><img src="${contextRoot}/back/article/photo/${value.articleId}" width="100px" height="100px"></td>
<td><c:out value="${value.articleDate}" /></td>
 <td  class="btn"><a href="${contextRoot}/back/article/delete/${value.articleId}"><button class="btn1" id="delete" onclick="return del()">🗑️</button></a>
 <td class="btn"><a href="${contextRoot}/back/article/update/${value.articleId}"><button class="btn1">📝</button></a>

<tr>
</table>
      
      

      
   
  </c:forEach>
<div style="text-align: center;">
<c:forEach begin="1" end="${page.totalPages}" var="p">
<a href="${contextRoot}/article/all?p=${p}"><c:out value="${p}"/></a>
</c:forEach>

  
  
 
  
  <br />
  

 
   <c:forEach var="pageNumber" begin="1" end="${page.totalPages}"></c:forEach>
   

  </div>

</div>


<jsp:include page="layout/footer.jsp" />