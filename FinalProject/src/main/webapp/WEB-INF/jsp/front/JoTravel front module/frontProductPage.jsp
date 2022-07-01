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
        <header class="header_area">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <a class="navbar-brand logo_h" href="index.html"><img src="<c:url value="/images/blog/Logo.png"/>" alt=""></a>
<%--                     <a class="navbar-brand logo_h" href="index.html"><img src="<c:url value="/image/Logo.png"> alt=""></a> --%>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto">
                            <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li> 
                            <li class="nav-item"><a class="nav-link" href="about.html">About us</a></li>
                            <li class="nav-item"><a class="nav-link" href="accomodation.html">Accomodation</a></li>
                            <li class="nav-item active"><a class="nav-link" href="gallery.html">Gallery</a></li>
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                                    <li class="nav-item"><a class="nav-link" href="blog-single.html">Blog Details</a></li>
                                </ul>
                            </li> 
                            <li class="nav-item"><a class="nav-link" href="elements.html">Elemests</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                        </ul>
                    </div> 
                </nav>
            </div>
        </header>
        <!--================Header Area =================-->
        
        <!--================Breadcrumb Area =================-->
        <section class="breadcrumb_area">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">Gallery</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Gallery</li>
                    </ol>
                </div>
            </div>
        </section>
        <!--================Breadcrumb Area =================-->
        
        <!--================Breadcrumb Area =================-->
        <section class="gallery_area section_gap" style="padding:10px 0px 10px 0px">
            <div class="container">
<!--                 <div class="section_title text-center"> -->
<!--                     <h2 class="title_color">Royal Hotel Gallery</h2> -->
<!--                     <p>Who are in extremely love with eco friendly system.</p> -->
<!--                 </div> -->
			 <div class="section_title text-center">
			     <h1 class="jumbotron-heading">JoTravel 商品頁面</h1>
			     <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don't simply skip over it entirely.</p>
			     <p><a href="#" class="btn btn-primary my-2">最夯熱門旅遊</a>
			     <a href="#" class="btn btn-secondary my-2">旅遊許願池</a>
			     </p>
			 </div>
               

			<div class="row imageGallery1" id="gallery">
                
                
                    <!-- <div class="col-md-4 gallery_item"> -->
                        <!-- <div class="gallery_img"> -->
                        <!-- <img src="<c:url value="images/01.jpeg"/>" alt=""> -->
                            <!-- <div class="hover"> -->
                            	<!-- <a class="light" href="<c:url value="images/01.jpeg"/>"><i class="fa fa-expand"></i></a> -->
                         
                    
					            <c:forEach items="${page.content}" var="product">
					            <div class="col-md-4">
					              <div class="card mb-4 box-shadow">

					               <img class="card-img-top" src="${contextRoot}/back/product/photo/${product.productId}" width="160px" height="300px" alt="Card image cap"> 
					<!--                 <img class="card-img-top" data-src="holder.js/100px225?theme=thumb&bg=55595c&fg=eceeef&text=Thumbnail" alt="Card image cap"> -->
					                <div class="card-body" style="height:202px">
					                     <div class="text-nowrap bg-light border text-center" style="width: 19rem;">
					                 <span>商品名稱: ${product.productName}</span><br/>
					              		 </div><br/>
					 
					                  <p class="card-text" style="height:24px">${product.productSimpleDescription}</p>
					                 
					                  優惠售價:$ ${product.productPrice} <br>
					                  <div class="d-flex justify-content-between align-items-center">
					                  
					                    <div class="btn-group">
					                      <button type="button" class="btn btn-sm btn-outline-secondary">🛒加入購物車</button>
					                      <button type="button" class="btn btn-sm btn-outline-secondary">立即購買</button>
					                    </div>
					                    <small class="text-muted">揪團只到:<br/><fmt:formatDate pattern="MM 月 dd 日 " value="${product.endDate}"/></small>
					          
					                  </div>
					                </div>
					              </div>
					            </div>
							</c:forEach>

                       </div>
                      </div>
                    </div>
                    
<!--                     <div class="col-md-4 gallery_item"> -->
<!--                         <div class="gallery_img"> -->
<!--                             <img src="image/gallery/02.jpg" alt=""> -->
<!--                             <div class="hover"> -->
<!--                             	<a class="light" href="image/gallery/02.jpg"><i class="fa fa-expand"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-md-4 gallery_item"> -->
<!--                         <div class="gallery_img"> -->
<!--                             <img src="image/gallery/03.jpg" alt=""> -->
<!--                             <div class="hover"> -->
<!--                             	<a class="light" href="image/gallery/03.jpg"><i class="fa fa-expand"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-md-4 gallery_item"> -->
<!--                         <div class="gallery_img"> -->
<!--                             <img src="image/gallery/04.jpg" alt=""> -->
<!--                             <div class="hover"> -->
<!--                             	<a class="light" href="image/gallery/04.jpg"><i class="fa fa-expand"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
                    
<!--                     <div class="col-md-4 gallery_item"> -->
<!--                         <div class="gallery_img"> -->
<!--                             <img src="image/gallery/06.jpg" alt=""> -->
<!--                             <div class="hover"> -->
<!--                             	<a class="light" href="image/gallery/05.jpg"><i class="fa fa-expand"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-md-4 gallery_item"> -->
<!--                         <div class="gallery_img"> -->
<!--                             <img src="image/gallery/05.jpg" alt=""> -->
<!--                             <div class="hover"> -->
<!--                             	<a class="light" href="image/gallery/06.jpg"><i class="fa fa-expand"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-md-4 gallery_item"> -->
<!--                         <div class="gallery_img"> -->
<!--                             <img src="image/gallery/01-1.jpg" alt=""> -->
<!--                             <div class="hover"> -->
<!--                             	<a class="light" href="image/gallery/01-1.jpg"><i class="fa fa-expand"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-md-4 gallery_item"> -->
<!--                         <div class="gallery_img"> -->
<!--                             <img src="image/gallery/02-1.jpg" alt=""> -->
<!--                             <div class="hover"> -->
<!--                             	<a class="light" href="image/gallery/02-1.jpg"><i class="fa fa-expand"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                     <div class="col-md-4 gallery_item"> -->
<!--                         <div class="gallery_img"> -->
<!--                             <img src="image/gallery/03-1.jpg" alt=""> -->
<!--                             <div class="hover"> -->
<!--                             	<a class="light" href="image/gallery/03-1.jpg"><i class="fa fa-expand"></i></a> -->
<!--                             </div> -->
<!--                         </div> -->
                    </div>
                </div>
            </div>
        </section>
        <!--================Breadcrumb Area =================-->
        
        <!--================ start footer Area  =================-->	
        <footer class="footer-area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">About Agency</h6>
                            <p>The world has become so fast paced that people don’t want to stand by reading a page of information, they would much rather look at a presentation and understand the message. It has come to a point </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">Navigation Links</h6>
                            <div class="row">
                                <div class="col-4">
                                    <ul class="list_style">
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">Feature</a></li>
                                        <li><a href="#">Services</a></li>
                                        <li><a href="#">Portfolio</a></li>
                                    </ul>
                                </div>
                                <div class="col-4">
                                    <ul class="list_style">
                                        <li><a href="#">Team</a></li>
                                        <li><a href="#">Pricing</a></li>
                                        <li><a href="#">Blog</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </div>										
                            </div>							
                        </div>
                    </div>							
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6 class="footer_title">Newsletter</h6>
                            <p>For business professionals caught between high OEM price and mediocre print and graphic output, </p>		
                            <div id="mc_embed_signup">
                                <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
                                    <div class="input-group d-flex flex-row">
                                        <input name="EMAIL" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
                                        <button class="btn sub-btn"><span class="lnr lnr-location"></span></button>		
                                    </div>									
                                    <div class="mt-10 info"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget instafeed">
                            <h6 class="footer_title">InstaFeed</h6>
                            <ul class="list_style instafeed d-flex flex-wrap">
                                <li><img src="image/instagram/Image-01.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-02.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-03.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-04.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-05.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-06.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-07.jpg" alt=""></li>
                                <li><img src="image/instagram/Image-08.jpg" alt=""></li>
                            </ul>
                        </div>
                    </div>						
                </div>
                <div class="border_line"></div>
                <div class="row footer-bottom d-flex justify-content-between align-items-center">
                    <p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    <div class="col-lg-4 col-sm-12 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </footer>
<!--================ End footer Area  =================-->
        
        
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