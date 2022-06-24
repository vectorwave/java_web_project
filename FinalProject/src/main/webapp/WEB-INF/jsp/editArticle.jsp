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



<form:hidden path="articleId"/>
<!-- <input  path="accountId" name="accountId" value="1"/> -->
<input type="text" name="accountId" value="1" style="visibility:hidden"/>
<!-- path="accountId" -->

  <div class="form-group">
    文章標題
    <form:input type="text" path="articleTitle" class="form-control" id="exampleFormControlInput1" placeholder="請輸入文章....."/>
  </div>
  
  <div class="form-group">
    文章分類
    <select  class="form-control" id="exampleFormControlSelect1">
      <option  value="分享">分享</option>
      <option  value="廣告">廣告</option>
      <option  value="閒聊">閒聊</option>
    </select>
    <form:hidden id="commentType" path="articleCategory" value="分享"/>
  </div>
  <img id="output" width="200px" height="200px" class="review" style="background-color:white"/>
  <br><br>
   文章圖片：<br><div><input type="file"  name="file" accept="image/*" onchange="loadFile(event)"/><br/></div>
  <div><br>
 
  </div>
<!--   class="form-control" -->
  <div class="form-group">
 
    <form:label path="articleText" for="exampleFormControlTextarea1">文章內文</form:label>
    <form:textarea path="articleText" class="form-control" id="exampleFormControlTextarea1" rows="3"></form:textarea>
  </div>
  
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