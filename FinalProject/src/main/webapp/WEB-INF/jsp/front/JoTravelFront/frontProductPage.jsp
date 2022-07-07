<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!doctype html>
<html lang="en">
      <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="image/favicon.png" type="image/png">
        <title>Royal Hotel</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href='<c:url value="/css/blog/bootstrap.css"/>'>
        <link rel="stylesheet" href="<c:url value="/css/blog/vendors/linericon/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/blog/font-awesome.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/blog/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/blog/vendors/nice-select/css/nice-select.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css"/>">
        <!-- main css -->
        <link rel="stylesheet" href="<c:url value="/css/blog/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/css/blog/responsive.css"/>">
    </head>
    <body>
        <!--================Header Area =================-->
        
        <jsp:include page="frontLayout/frontHeader.jsp" />
        
        <!--================Header Area =================-->
        <section class="breadcrumb_area">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">Product</h2>
                    <ol class="breadcrumb">
                        <li><a href="${contextRoot}/">Home</a></li>
                        <li class="active">Product</li>
                    </ol>
                </div>
            </div>
        </section>
        
        <!--================Breadcrumb Area =================-->
        <section class="gallery_area section_gap" style="padding:10px 0px 10px 0px">
            <div class="container">
<!--                 <div class="section_title text-center"> -->
<!--                     <h2 class="title_color">Royal Hotel Gallery</h2> -->
<!--                     <p>Who are in extremely love with eco friendly system.</p> -->
<!--                 </div> -->
			 <div class="section_title text-center">
			     <h1 class="jumbotron-heading">來趟旅遊　為回憶點綴</h1>
			     <!-- <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don't simply skip over it entirely.</p> -->
			     <p><a href="#" class="btn btn-primary my-2">最夯熱門旅遊</a>
			     <a href="${contextRoot}/front/JoGroupFront/all" class="btn btn-secondary my-2">旅遊許願池</a>
			     </p>
			 </div>
       <!--================Breadcrumb Area =================-->
       
<div class="row">
<div class="col-lg-9">

               
<form action="/jotravel/front/productPage" method="get" >
<input type="text" name="key" placeholder="搜尋商品名稱" id="key"><input type="submit" id="send" value="🔍" ></a>  
</form>
			<div class="row imageGallery1" id="gallery">
                
                
                    <!-- <div class="col-md-4 gallery_item"> -->
                        <!-- <div class="gallery_img"> -->
                        <!-- <img src="<c:url value="images/01.jpeg"/>" alt=""> -->
                            <!-- <div class="hover"> -->
                            	<!-- <a class="light" href="<c:url value="images/01.jpeg"/>"><i class="fa fa-expand"></i></a> -->
                    
			   			<c:if test="${tagProduct eq null}">
			   			<c:set var="tagProduct" value="${page.content}"></c:set>
			   			</c:if>
			   			
			   			
			   			
<%-- 			            <c:forEach items="${page.content}" var="product">                  --%>
			            <c:forEach items="${tagProduct}" var="product">                 
					            <div class="col-md-4">
					              <div class="card mb-4 box-shadow">
									<a href="${contextRoot}/front/productPage/detail?id=${product.productId}" > 
					               <img class="card-img-top" src="${contextRoot}/back/product/photo/${product.productId}" width="160px" height="300px" alt="Card image cap"> </a>
					                <div class="card-body" style="height:210px">
					                     
					                <a href="${contextRoot}/front/productPage/detail?id=${product.productId}" > <span style="font-size:larger"> ${product.productName}</span></a><br/>
					              		 <br/>
					 
					                  <p class="card-text" style="height:24px">${product.productSimpleDescription}</p>
					                 <br/>
					                  優惠售價:$ <span style="font-size:20px;color:red" >${product.productPrice}</span>

					                  <div class="d-flex justify-content-between align-items-center">
					                  
					                    <div class="btn-group">
<!-- 					                      <button type="button" class="btn btn-sm btn-outline-secondary">🛒加入購物車</button> -->
					                      <a href="${contextRoot}/front/productPage/detail?id=${product.productId}" >
					                      <button type="button" class="btn btn-sm btn-outline-secondary">查看商品</button></a>
					                    </div>
					                    <small class="text-muted">揪團只到:<br/><fmt:formatDate pattern="MM 月 dd 日 " value="${product.endDate}"/></small>
					          
					                  </div>
					                </div>
					              </div>
					            </div>
							</c:forEach>

                       </div>
                     
 
 	<div class="row justify-content-center">
 	<div class="col-9" style="text-align: center;">
	<c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
  	<c:choose> 
  	<c:when test="${pageNumber!= page.number+1}"  > 
  	<a href="${contextRoot}/front/productPage?p=${pageNumber}&key=${key}"><c:out value="${pageNumber}"/></a>
 	</c:when>
 	<c:otherwise>
 	<c:out value="${pageNumber}"/>
 	</c:otherwise>
 	</c:choose>
 	
 	 <c:if test="${pageNumber != page.totalPages}">
   |
   </c:if>
 	</c:forEach>
 
 </div>
</div>
   </div>
<!--  -----右側欄位----- -->
 	<div class="col-lg-3">
 <!--  -----右側欄位----- -->	

<div class="blog_right_sidebar">
<!-- 						<aside class="single_sidebar_widget search_widget"> -->

<!-- 							<div class="br"></div> -->
<!-- 						</aside> -->

						<aside class="single-sidebar-widget tag_cloud_widget">
							<h4 class="widget_title">熱門標籤</h4>
							<ul class="list_style">
								
								<li><a href='http://localhost:8081/jotravel/front/productPage?key=墾丁'>墾丁</a></li>
								<li><a href='http://localhost:8081/jotravel/front/productPage?key=一'>一日遊</a></li>
								<li><a href='http://localhost:8081/jotravel/front/productPage?tag=北部'>北部</a></li>
								<li><a href='http://localhost:8081/jotravel/front/productPage?tag=南部'>南部</a></li>
								<li><a href='http://localhost:8081/jotravel/front/productPage?tag=中部'>中部</a></li>
								<li><a href='http://localhost:8081/jotravel/front/productPage?tag=東部'>東部</a></li>
								<li><a href='http://localhost:8081/jotravel/front/productPage?tag=外島'>外島</a></li>
								
								
							</ul>
						</aside>
						<aside class="single-sidebar-widget tag_cloud_widget">
							<h4 class="widget_title">商品排行榜</h4>
							<ul class="list_style">
							 <c:forEach items="${productList}" var="product" begin="0" end="4" step="1" varStatus="i">
							
<%-- 							<c:out value="🏆 ${productList[product].productName}"></c:out> --%>
							<a href="${contextRoot}/front/productPage/detail?id=${product.productId}" >
							
							<c:out value="🏆 ${product.productName}"></c:out>
<%-- 							<c:out value="${scoreList[i.index]} 顆⭐"></c:out> --%>
							
							
							</a><br/>
							
<%-- 							<c:out value="${scoreList[product]} ⭐"></c:out> --%>
							
							 </c:forEach>
								
								<li><p id="krisrock"></p></li>
								<li><p id="krisrock1"></p></li>
								<li><p id="krisrock2"></p></li>
								
<!-- 								<li><a href="#">Fashion</a></li> -->
<!-- 								<li><a href="#">Food</a></li> -->
<!-- 								<li><a href="#">Technology</a></li> -->
<!-- 								<li><a href="#">Lifestyle</a></li> -->
<!-- 								<li><a href="#">Art</a></li> -->
<!-- 								<li><a href="#">Adventure</a></li> -->
<!-- 								<li><a href="#">Food</a></li> -->
<!-- 								<li><a href="#">Lifestyle</a></li> -->
<!-- 								<li><a href="#">Adventure</a></li> -->
							</ul>
						</aside>
					</div>











<!--  -----右側欄位----- -->
 	</div>
 <!--  -----右側欄位----- -->
<!--  -- -->
 
 </div>
 </div>
 
 
    </section>    
      <jsp:include page="frontLayout/frontFooter.jsp" />               

<!--================ End footer Area  =================-->
 
		<!--   ===購物車按鈕===   -->
 		<script type="text/javascript" src="${contextRoot}/js/js.cookie.min.js"> </script>
 		<script type="text/javascript">
 		function addToCart(productId,amount,date,total_days){
 			let cart = cookies.set("cart");
 			cart += ${product.productId} + ',' + amount + ',' + date + ',' + total_days+';' ;
 			cookies.set("cart",cart);
 		}
 		
 		</script>
 	
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="<c:url value="/js/blog/jquery-3.2.1.min.js"/>"></script>
        <script src="<c:url value="/js/blog/popper.js"/>"></script>
        <script src="<c:url value="/js/blog/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.js"/>"></script>
        <script src="<c:url value="/js/blog/jquery.ajaxchimp.min.js"/>"></script>
        <script src="<c:url value="/js/blog/mail-script.js"/>"></script>
        <script src="<c:url value="/css/blog//vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"/>"></script>
        <script src="<c:url value="/css/blog//vendors/nice-select/js/jquery.nice-select.js"/>"></script>
        <script src="<c:url value="/js/blog/mail-script.js"/>"></script>
        <script src="<c:url value="/js/blog/stellar.js"/>"></script>
        <script src="<c:url value="/css/blog//vendors/lightbox/simpleLightbox.min.js"/>"></script>
        <script src="<c:url value="/js/blog/custom.js"/>"></script>
    </body>
</html>