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
  <input id=accountId name="accountId" value="${loginuser.accountId}" style="visibility:hidden"/>
<!-- path="accountId" -->
<form:hidden path="picId"  value="${article.articleId}"/>
<form:hidden path="articleJogroup"  value="1"/>

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
      <option  value="揪團">揪團</option>
      
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
  
 <input class="btn btn-primary" type="submit" value="Submit"/><br><br>
 <input class="btn btn-warning" type="button" value="一鍵輸入"  id="OneKey"/>
 <input class="btn btn-danger" type="button" value="揪團範本"  id="OneKey1"/>
 
</form:form>

<script>

$('#OneKey').click(function(){
	  $('#exampleFormControlInput1').val("龍洞-玩水的首選!!!");
	  $('#exampleFormControlTextarea1').val("在龍洞灣海洋公園浮潛，有專業的國際認證標準ADS最高級教練指導，潛進水裡近距離與豐富的魚群同游，尋找海星和海膽，是很棒的體驗，有機會再來玩玩！在這裡特別推薦帶我們的自由潛水教練。左教練賽高!!!!!!");
	  
	 })


	 
	 $('#OneKey1').click(function(){
	  $('#exampleFormControlInput1').val("外雙溪SUP-立槳之旅集氣");
	  $('#exampleFormControlTextarea1').val("外雙溪位於台北市區，乘著SUP順流而下，沿途會看見壯觀的芝山岩，接著經過雙溪河濱公園以及新佳公園，非常希望這次可以成團，讓立槳左教練帶我們出去玩");
	  
	 })


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