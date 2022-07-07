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
                    <h2 class="page-cover-tittle">${guideInfo.profileName} 管理頁面</h2>
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
            <div class="container" style="margin-bottom:50px;margin-top:50px;">
                <div class="row">

                    <c:if test="${guideInfo.guidePhoto == null}">
                    <img class="img-fluid" src="<c:url value="/image/emptyProfile.png"/>" alt="img" style="height:120px">
                    </c:if>
                    
                    <c:if test="${guideInfo.guidePhoto != null}">
                    <div class="">
                        <img class="img-fluid" src="${contextRoot}/guide_info/photo/${guideInfo.accountId}" alt="圖片讀取失敗" style="height:120px">
                    </div>
                </c:if>

                    <div class="" style="display:table; margin-left: 100px;">

                        <div class="about_content" style="display:table-cell;vertical-align:middle;text-align: left;">

                         <c:if test="${guideInfo.profileName != null}">
                            <h3 style="color:black">${guideInfo.profileName} - ${guideInfo.guideName}</h3>
                            <h5>證照種類： ${guideInfo.licenceType}</h5>
                            <h5>證照號碼： ${guideInfo.licenceNo}</h5>
                            <a href="http://localhost:8081/jotravel/guide/myprofile/edit/${loginuser.accountId}" class="genric-btn primary medium">個人資料管理</a> 
                        </c:if>

                        <c:if test="${guideInfo.profileName == null}">
                        <h3>您尚未填寫個人資料</h3>
                        <a href="http://localhost:8081/jotravel/guide/myprofile/edit/${loginuser.accountId}" class="genric-btn primary medium">立即填寫</a> 

                        </c:if>
                       
                       
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!--================ About Guide Area  =================-->

        <section class="gallery_area section_gap" style="padding:10px 0px 10px 0px;background-color: rgb(255, 250, 224);">
            <div class="" style="padding:30px 100px 30px 100px">

               <div class="section_title text-right">

                <div style="background-color:rgb(255, 141, 35);margin-top: 20px;width:190px;border-radius:35px;text-align: center;">
                <h2 style="color: rgb(255, 255, 255);padding-top:3px;padding-bottom:3px;">所有商品</h2>
                </div>
                <br/>


                <div align="center">

			<div style="padding:25px 8px 25px 8px;background-color: white; border-radius: 30px;">
                         



                    <table>
                        <tr class="thContent" style="white-space:nowrap">
                        <th>編號<th>圖片<th>商品名稱<th>商品價格<th>上架時間<th>下架時間<th>更新時間<th>分區<th>狀態<th> <th colspan="2"> <a href="${contextRoot}/front/addProduct" class="genric-btn primary circle medium">上架行程</a>  </tr> 
                        
                        <div>
                        <c:forEach var="value" items="${productList}">
                        <tr class="tdContent">
                        <td style="border-radius: 20px 0px 0px 20px"> <c:out value="${value.productId}"/></td>
                        <td> <img src="${contextRoot}/back/product/photo/${value.productId}" width="100px"> </td>      	  
                        <td> <c:out value="${value.productName}"/></td>
                        <td> <c:out value="${value.productPrice}"/></td>     	     		
                        <td> <fmt:formatDate pattern="yyyy/MM/dd" value="${value.startDate}" />   	     		
                        <td> <fmt:formatDate pattern="yyyy/MM/dd" value="${value.endDate}" /></td>      	     		   		
                        <td> <fmt:formatDate pattern="yyyy/MM/dd a hh:mm:ss " value="${value.updatedTime}"/></td> 
                        
                        <td> <c:out value="${value.productArea}"/></td> 
                        <td> <c:out value="${value.status}"/></td> 
                        <td style="white-space:nowrap"><a href="${contextRoot}/front/ProductComment/search?id=${value.productId}" class="genric-btn success-border small" style="border-radius: 10px;">查看評論</a></td>
                        <td style="white-space:nowrap"><button class="delt" onclick="upd('${value.productId}')" >📝</button></td> 
                        <td style="border-radius: 0px 20px 20px 0px;white-space:nowrap;"><button class="delt" onclick="del('${value.productId}')" >✂</button></td> 
                        
<%--                          <td style="white-space:nowrap"><a href="${contextRoot}/front/frontEditProduct?id=${value.productId}" class="genric-btn info-border small" style="border-radius: 10px;">修改</a></td>  --%>
<%--                         <td style="border-radius: 0px 20px 20px 0px;white-space:nowrap;"><a href="${contextRoot}/back/product/frontDelete/${value.productId}" class="genric-btn danger-border small" style="border-radius: 10px;">刪除</a></td> --%>
                        
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
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>      
        <script>
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
			  
			document.location.href='${contextRoot}/front/frontEditProduct?id='+e;
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

			document.location.href='/jotravel/back/product/frontDelete/'+e;
		  }else if (result.isDenied) {
			  
			    return false;
			  }
		});
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