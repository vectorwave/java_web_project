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
        <title>JoTravel 所有導遊</title>
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
            #guideCard:hover {
                background-color: rgb(245, 245, 245);
            }
            
            html {
                scroll-behavior: smooth;
            }
        </style>    
    </head>
    <body>
        <!--================Header Area =================-->
        
        <jsp:include page="frontLayout/frontHeader.jsp" />
        
        <!--================Header Area =================-->
        
        <!--================Breadcrumb Area =================-->
        <section class="banner_area blog_banner d_flex align-items-center">
            <div class="overlay gd-parallax" data-stellar-ratio="0.9"
                data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="banner_content text-center">
                    <h2>
                        導遊資訊
                    </h2><br>
                    <h3>JoTravel 所有導遊</h3>
                    <a href="#go" class="btn white_btn button_hover">立即查看</a>
                </div>
            </div>
        </section>
        <!--================Breadcrumb Area =================-->
        
        <!--================Breadcrumb Area =================-->
        <section class="gallery_area section_gap" style="padding:10px 0px 10px 0px">
            <div class="container">

			
               

			<div class="row imageGallery1" id="gallery">
                         
                    
					            <c:forEach items="${page.content}" var="guide">
					            <div class="col-md-4" id="go">
					              <div class="card mb-4 box-shadow" id="guideCard">
									<a href="#" > 
					               <img class="card-img-top" src="${contextRoot}/guide_info/photo/${guide.accountId}" width="160px" height="300px" alt="Card image cap" style="padding:30px"> </a>
					<!--  <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap"> -->
					                <div class="card-body" style="height:260px">
					                     <div class="" style="width: 19rem;font-size: 20px;font-weight: 600;" align="center">
					                <a href="#" style="color: rgb(70, 70, 70);"> <span>${guide.profileName}</span></a><br/><br/>
					              		 </div>
                                           <span style="color:rgb(70, 70, 70);font-weight: 400;">證照類型：${guide.licenceType}</span>
                                         <br/>
					 
					                  <p class="card-text" style="height:24px">${guide.guideDescription}</p>
					                 <br/>
					                  

					                  <div class="d-flex justify-content-between align-items-center">
					                  
					                    <div class="button-group-area mt-40" style="margin-top:30px;">
                                          <a href="${contextRoot}/guides/${guide.accountId}" class="genric-btn primary-border circle arrow">查看更多<span class="lnr lnr-arrow-right"></span></a>
					                    </div>    

					                  </div>
					                </div>
					              </div>
					            </div>
							</c:forEach>


                       </div>
                      </div>

                <!-- </div>
            </div>
        </div> -->
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