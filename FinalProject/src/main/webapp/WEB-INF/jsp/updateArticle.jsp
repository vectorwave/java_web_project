<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<br>
<br>
<br>

<form:form method="post" action="${contextRoot}/back/article/editArticle" modelAttribute="article" enctype="multipart/form-data">


<%-- <c:forEach var="value" items="${page.content}"> --%>
<form:hidden path="articleId"  value="${article.articleId}"/>

  <input id=accountId name="accountId" value="${loginuser.accountId}" />

<!-- <input type="text" name="accountId" value="1" style="visibility:hidden"/> -->
 <form:hidden path="picId"  value="${article.articleId}"/>

  <div class="form-group">
    文章標題
    <form:input type="text" path="articleTitle" class="form-control" id="exampleFormControlInput1" value="${value.articleTitle}"/>
  </div>
  
  <div class="form-group">
    文章分類
    <select  class="form-control" id="exampleFormControlSelect1">
      <option  value="分享">分享</option>
      <option  value="廣告">廣告</option>
      <option  value="閒聊">閒聊</option>
    </select>
    <form:hidden id="commentType" path="articleCategory" value="${article.articleCategory}"/>
  </div>
  <div><img src="${contextRoot}/back/article/photo/${article.articleId}" width="200px" height="200px">更新後圖片:<img id="output" width="200px" height="200px" class="review" style="background-color:white"/></div>
 <br><br> <div> 文章圖片：<input type="file"  name="file" accept="image/*" onchange="loadFile(event)" /></div>
  
  <div><br>
 
  </div>
  <div class="form-group">
    <form:label path="articleText" for="exampleFormControlTextarea1">文章內文</form:label>
    <form:textarea path="articleText" class="form-control" id="exampleFormControlTextarea1" rows="3" value="${article.articleText}"></form:textarea>
  </div>
	<%--   </c:forEach> --%>
	<input class="btn btn-primary" type="submit" value="Submit"/>
</form:form>

<script>
$(function(){
	
	$('#exampleFormControlSelect1').change(function(){
		var type =$('#exampleFormControlSelect1').val();
		
		$('#commentType').val(type);
		console.log(type);
		
	})
	
});



var loadFile = function(event) {
  var output = document.getElementById('output');
  output.src = URL.createObjectURL(event.target.files[0]);
  output.onload = function() {
    URL.revokeObjectURL(output.src) // free memory
  }
};

</script>


<jsp:include page="layout/footer.jsp" />