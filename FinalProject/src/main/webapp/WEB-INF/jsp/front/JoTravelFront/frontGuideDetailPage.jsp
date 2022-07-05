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
    </head>
    <body>
        <!--================Header Area =================-->
        
        <jsp:include page="frontLayout/frontHeader.jsp" />
        
        <!--================Header Area =================-->
        
        <!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">${guideInfo.profileName}</h2>
                    <ol class="breadcrumb">
                        <li><a href="${contextRoot}/guides">所有導遊</a></li>
                        <li class="active">導遊詳細資訊</li>
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
                        <img class="img-fluid" src="${contextRoot}/guide_info/photo/${guideInfo.accountId}" alt="img">
                    </div>
                    <div class="col-md-6">
                        <div class="about_content ">
                            <h2 class="title title_color">${guideInfo.profileName}<br>${guideInfo.guideName}</h2>
                            <h4>證照種類： ${guideInfo.licenceType}</h4>
                            <h6>性別： ${guideInfo.guideGender}</h6>
                            <h6>連絡電話： ${guideInfo.guidePhone}</h6>
                            <h6>Email： ${guideInfo.guideEmail}</h6>
                            <p style="font-size: larger;">${guideInfo.guideDescription}</p>
                            <a href="#" class="button_hover theme_btn_two">立即查看熱門活動</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================ About Guide Area  =================-->

        <section class="gallery_area section_gap" style="padding:10px 0px 10px 0px">
            <div class="container">

			
               

			<div class="row imageGallery1" id="gallery">
                         
                    
					            <c:forEach items="${page.content}" var="guide">
					            <div class="col-md-4">
					              <div class="card mb-4 box-shadow" id="guideCard">
									<a href="#" > 
					               <img class="card-img-top" src="${contextRoot}/guide_info/photo/${guide.accountId}" width="160px" height="300px" alt="Card image cap"> </a>
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
                                          <a href="#" class="genric-btn primary-border circle arrow">Primary<span class="lnr lnr-arrow-right"></span></a>
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