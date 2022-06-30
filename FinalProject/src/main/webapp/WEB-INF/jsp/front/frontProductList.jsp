<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link href="${contextRoot}/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="${contextRoot}/jQueryconfirm/jquery-confirm.css">
<link href="${contextRoot}/css/album.css" rel="stylesheet">	

<meta charset="UTF-8">
<title>Product Page</title>


<style>
  .col-md-4{
    height: 500px;
    padding-top: 0px;
  }
</style>

</head>
<body>

<header>
      <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
          <div class="row">
			<!-- ####上方文字### -->
            <div class="col-sm-8 col-md-7 py-4">
              <h4 class="text-white">關於JoTravel</h4>
              <p class="text-muted">有人說過:「人之所以愛旅行，不是為了抵達目的地，而是為了享受旅途中的種種樂趣。」
				我們希望每段旅程經歷的故事，都將成為你人生的美好回憶，現在，馬上來規劃一段屬於你的旅程吧！</p>
            </div>
            
            <!-- ####上方Contact文字### -->
            <div class="col-sm-4 offset-md-1 py-4">
              <h4 class="text-white">Contact</h4>
              <ul class="list-unstyled">
                <li><a href="#" class="text-white">Follow on Twitter</a></li>
                <li><a href="#" class="text-white">Like on Facebook</a></li>
                <li><a href="#" class="text-white">Email me</a></li>
              </ul>
            </div>
          
          </div>
        </div>
      </div>
      
      <div class="navbar navbar-dark bg-dark box-shadow">
        <div class="container d-flex justify-content-between">
          <a href="#" class="navbar-brand d-flex align-items-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg>
            <strong>Album</strong>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
      </div>
    </header>

<!-- 	####中間文字#### -->
    <main role="main">

      <section class="jumbotron text-center" style="padding: 0px">
          <a href="#"> <img src="../images/bk.jpg" id="img1" width="1458px" height="680px"></a>
        <div class="container">
          <h1 class="jumbotron-heading">JoTravel 商品頁面</h1>
          <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don't simply skip over it entirely.</p>
          <p>
            <a href="#" class="btn btn-primary my-2">最夯熱門旅遊</a>
            <a href="#" class="btn btn-secondary my-2">旅遊許願池</a>
          </p>
        </div>
      </section>

      <div class="album py-5 bg-light">
        <div class="container">
          <div class="row">
          
            <c:forEach items="${page.content}" var="product">
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
               <img class="card-img-top" src="${contextRoot}/back/product/photo/${product.productId}" width="160px" height="300px" alt="Card image cap"> 
<!--                 <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap"> -->
                <div class="card-body">
                     <div class="text-nowrap bg-light border text-center" style="width: 19rem;">
                 <span>商品名稱: ${product.productName}</span><br/>
              		 </div><br/>
 
                  <p class="card-text">${product.productSimpleDescription}</p>
                 
                 
                 
                  優惠售價:$ ${product.productPrice} <br>
                  <div class="d-flex justify-content-between align-items-center">
                  
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary">🛒加入購物車</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">立即購買</button>
                    </div>
                    <small class="text-muted">揪團只到:<br/><fmt:formatDate pattern="MM 月 dd 日 " value="${product.endDate}" /></small>
          
                  </div>
                </div>
              </div>
            </div>
		</c:forEach>
  
<!--          商品頁面結束 -->
          </div>
        </div>
      </div>
<div class="row justify-content-center">
 	<div class="col-9" style="text-align: center;">
 	
	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
  	<c:choose> 
  	<c:when test="${pageNumber!= page.number+1}"  > 
  	<a href="${contextRoot}/front/allProduct?p=${pageNumber}&key=${key}"><c:out value="${pageNumber}"/></a>
<%--   	<c:if test="${pageNumber != page.totalPages}"><span>|</span></c:if> --%>
 	</c:when>
 	<c:otherwise>
<%--  	<span><c:out value="${pageNumber}"/> |</span> --%>
 	<c:out value="${pageNumber}"/>
 	</c:otherwise>
 	</c:choose>
 	
 	 <c:if test="${pageNumber != page.totalPages}">
   |
   </c:if>
 	</c:forEach>
 
 </div>
</div>
    </main>

    <footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Back to top</a>
        </p>
        <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting started guide</a>.</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="${contextRoot}/js/vendor/popper.min.js"></script>
<!--     <script src="../../../../dist/js/bootstrap.min.js"></script> -->
    <script src="${contextRoot}/js/vendor/holder.min.js"></script>
    <script type="text/javascript"
	src="${contextRoot}/js/bootstrap.bundle.min.js"></script>

	<script type="text/javascript"
	src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript"
	src="${contextRoot}/jQueryconfirm/jquery-confirm.js"></script>
    
  </body>
</html>