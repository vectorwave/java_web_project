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
        <title>JoTravel 導遊主頁</title>
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
        
        <style>

        </style>    
    </head>
    <body>
        <!--================Header Area =================-->
        
        <jsp:include page="frontLayout/frontHeader.jsp" />
        
        <!--================Header Area =================-->
        
        <!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
            <div class="overlay gd-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">${guideInfo.profileName} - 管理頁面</h2>
                    <ol class="breadcrumb">
                        <li><a href="#">會員中心</a></li>
                        <li class="active">導遊主頁</li>
                    </ol>
                </div>
            </div>
        </section>
        <!--================Breadcrumb Area =================-->
        
        <!--================ About Guide Area  =================-->
        <section class="about_history_area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 d_flex align-items-center">
                        <img class="img-fluid" src="${contextRoot}/guide_info/photo/${guideInfo.accountId}" alt="img" style="height:100px">
                    </div>
                    <div class="col-md-6" style="display:table">
                        <div class="about_content" style="display:table-cell;vertical-align:middle;text-align: left;">
                            <h2 class="title title_color">${guideInfo.profileName}<br>${guideInfo.guideName}</h2>
                            <h4>證照種類： ${guideInfo.licenceType}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ About Guide Area  =================-->

        <section class="gallery_area section_gap" style="padding:10px 0px 10px 0px;background-color: rgb(255, 250, 224);">
            <div class="container">

			
               <div class="section_title text-right">

                

                <div style="background-color:rgb(255, 123, 0);margin-top: 20px;width:150px;border-radius:35px;text-align: center;">
                <h3 style="color: rgb(255, 255, 255);">所有商品</h3>
                </div>
                <div align="right"> 
                    <a href="#" class="genric-btn primary large">上架行程</a>
                    <a href="#" class="genric-btn primary large">Extra Large</a>    
                </div>
                <br/>

			<div class="row imageGallery1" id="gallery">
                         
                <div>



                    <table class="" style="width:1200px;">
                        <tr style="background-color:#fac473;text-align: center;">
                        <th>編號<th>圖片<th>商品名稱<th>商品價格<th>上架時間<th>下架時間<th>更新時間<th>分區<th>上架狀態<th>修改<th>刪除</tr> 
                        
                        <div id="newTable">
                        <c:forEach var="value" items="${productList}">
                        <tr>
                        <td> <c:out value="${value.productId}"/></td>
                        <td> <img src="${contextRoot}/back/product/photo/${value.productId}" width="50px" height="50px"> </td>      	  
                        <td> <c:out value="${value.productName}"/></td>
                        <td> <c:out value="${value.productPrice}"/></td>     	     		
                        <td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 " value="${value.startDate}" />   	     		
                        <td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 " value="${value.endDate}" /></td>      	     		   		
                        <td> <fmt:formatDate pattern="yyyy 年 MM 月 dd 日 a hh:mm:ss " value="${value.updatedTime}"/></td> 
                        
                        <td> <c:out value="${value.productArea}"/></td> 
                        <td> <c:out value="${value.status}"/></td> 
                        <td><button class="delt" onclick="upd('${value.productId}')" >📝</button></td> 
                        <td><button class="delt" onclick="del('${value.productId}')" >✂</button></td> 
                        </tr>
                        </c:forEach>
                        </div>
                        </table>


                </div>    


               
                             </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>    
      <jsp:include page="frontLayout/frontFooter.jsp" />               
        
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