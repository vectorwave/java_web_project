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
        <title>JoTravel 揪遊四國</title>
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
        
        <!--================Banner Area =================-->
        <section class="banner_area">
            
            
            <div class="booking_table d_flex align-items-center">
            	<div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background="">
                    <video autoplay muted loop >
                     <source src="image/background.mp4" type="video/mp4">
<!--                      /FinalProject/src/main/webapp/WEB-INF/jsp/front/JoTravelFront/image/background.mp4 -->
                    </video>
                </div>
				<div class="container">
					<div class="banner_content text-center">
						<h6>說走就走，揪團旅遊趣</h6>
						<h2>JoTravel 揪遊四國</h2>
						<p>最多元的揪團平台，讓你揪是要玩<br> 不怕寂寞</p>
						<a href="#" class="btn theme_btn button_hover">立 即 揪 團</a>
					</div>
				</div>
            </div>
            <div class="hotel_booking_area position">
                <div class="container">
                    <div class="hotel_booking_table">
                        <div class="col-md-3">
                            <h2>活動<br>搜尋</h2>
                        </div>
                        <div class="col-md-9">
                            <div class="boking_table">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="book_tabel_item">
                                            <div class="form-group">
                                                <div class='input-group date' id='datetimepicker11'>
                                                    <input type='text' class="form-control" placeholder="活動日期"/>
                                                    <span class="input-group-addon">
                                                        <i class="fa fa-calendar" aria-hidden="true"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="book_tabel_item">
                                            <div class="input-group">
                                                <select class="wide">
                                                    <option data-display="請選擇地區">北部出團</option>
                                                    <option value="1">南部出團</option>
                                                    <option value="2">東部出團</option>
                                                    <option value="3">外島出團</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="book_tabel_item">
                                            <div class="input-group">
                                                <!-- <select class="wide">
                                                    <option data-display="Child">Number of Rooms</option>
                                                    <option value="1">Room 01</option>
                                                    <option value="2">Room 02</option>
                                                    <option value="3">Room 03</option>
                                                </select> -->
                                                <a class="book_now_btn button_hover" href="#">搜尋</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================Banner Area =================-->
       
        <section class="accomodation_area section_gap" style="padding:20px">
            <div class="container">
                <div class="section_title text-center" style="height:50px">
                    <h2 class="title_color">熱門旅遊行程</h2>
                    <p>參與多元且精采豐富的台灣各地旅遊行程</p>
                </div>
                
                <div class="row mb_30">
				<c:forEach items="${productList}" var="product" begin="2" end="5" step="1">
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                               <a href="${contextRoot}/front/productPage/detail?id=${product.productId}" > 
					               <img class="card-img-top" src="${contextRoot}/back/product/photo/${product.productId}" width="160px" height="300px" alt="Card image cap"> </a>
                                <a href="${contextRoot}/front/productPage/detail?id=${product.productId}" class="btn theme_btn button_hover">立即預定</a>
                            </div>
                            <a href="${contextRoot}/front/productPage/detail?id=${product.productId}"><h4 class="sec_h4">${product.productName}</h4></a>
                            <h5>$ ${product.productPrice}</h5>
                        </div>
                    </div>
                </c:forEach> 
            	 </div>  
            </div>
        </section> 
        
        <!--================Breadcrumb Area =================-->
        <section class="facilities_area section_gap">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background="">  
            </div>
            <div class="container">
                <div class="section_title text-center" style="height:40px">
                    <h2 class="title_w">揪出美好回憶</h2>
                    <h4>享受人生，享受旅遊<h4>
                </div>
                <div class="row mb_30">
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-dinner"></i>帶你吃遍台灣</h4>
                            <p>最懂吃的吃貨導遊，讓你從台灣北吃到台灣南，再一路吃到外島，美食專家開團啦！</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-bicycle"></i>吃飽了嗎？</h4>
                            <p>吃飽了那個著Outdoor導遊一起跑遍台灣，跋山涉水小肚肚OUT</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-shirt"></i>最棒的行程</h4>
                            <p>這是我參加過最棒的行程了～購物導遊帶我買了好多新衣服呢</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-car"></i>駕訓班導遊</h4>
                            <p>揪團學開車啦～想要拿到駕照不需要再買雞腿，跟著開車導遊一起開車出趣玩</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-construction"></i>此路不通</h4>
                            <p>這一格的標示有點難想文案喔。盡量湊滿兩行好了</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="facilities_item">
                            <h4 class="sec_h4"><i class="lnr lnr-coffee-cup"></i>City Cafe</h4>
                            <p>現在開團就送City Cafe體驗券，整個城市隨你喝咖啡</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--================Breadcrumb Area =================-->
        <section class="about_history_area section_gap" id="about_tag">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 d_flex align-items-center">
                        <div class="about_content ">
                            <h2 class="title title_color">關於我們<br>JoTravel<br>揪遊四國</h2>
                            <p>文案真的是滿難想的，大家看到一些灰灰的敘述如果有靈感真的可以不用害羞直接發揮你的文筆，集思廣益～文案真的是滿難想的，大家看到一些灰灰的敘述如果有靈感真的可以不用害羞直接發揮你的文筆，集思廣益～文案真的是滿難想的，大家看到一些灰灰的敘述如果有靈感真的可以不用害羞直接發揮你的文筆，集思廣益～</p>
                            <a href="${contextRoot}/front/productPage" class="button_hover theme_btn_two">立即查看熱門活動</a>
                        </div>
                    </div>
                    <div class="col-md-6">
                           <img class="img-fluid align-items-center" src="image/about_bg.jpg" alt="img" width="450px" height="450px" style="margin-left:130px">
                    </div>
                </div>
            </div>
        </section>
    
        <!--================Breadcrumb Area =================-->
        <section class="latest_blog_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                <hr>
                    <h2 class="title_color">論壇最新文章</h2>
                    <p>看看大家都參與了什麼有趣的活動，跟上最新熱門潮流！ </p>
                </div>
                <div class="row mb_30">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-recent-blog-post">
                            <div class="thumb">
                                <img class="img-fluid" src="image/blog/blog-1.jpg" alt="post">
                            </div>
                            <div class="details">
                                <div class="tags">
                                    <a href="#" class="button_hover tag_btn">Travel</a>
                                    <a href="#" class="button_hover tag_btn">Life Style</a>
                                </div>
                                <a href="#"><h4 class="sec_h4">Low Cost Advertising</h4></a>
                                <p>Acres of Diamonds… you’ve read the famous story, or at least had it related to you. A farmer.</p>
                                <h6 class="date title_color">31st January,2018</h6>
                            </div>	
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-recent-blog-post">
                            <div class="thumb">
                                <img class="img-fluid" src="image/blog/blog-2.jpg" alt="post">
                            </div>
                            <div class="details">
                                <div class="tags">
                                    <a href="#" class="button_hover tag_btn">Travel</a>
                                    <a href="#" class="button_hover tag_btn">Life Style</a>
                                </div>
                                <a href="#"><h4 class="sec_h4">Creative Outdoor Ads</h4></a>
                                <p>Self-doubt and fear interfere with our ability to achieve or set goals. Self-doubt and fear are</p>
                                <h6 class="date title_color">31st January,2018</h6>
                            </div>	
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-recent-blog-post">
                            <div class="thumb">
                                <img class="img-fluid" src="image/blog/blog-3.jpg" alt="post">
                            </div>
                            <div class="details">
                                <div class="tags">
                                    <a href="#" class="button_hover tag_btn">Travel</a>
                                    <a href="#" class="button_hover tag_btn">Life Style</a>
                                </div>
                                <a href="#"><h4 class="sec_h4">It S Classified How To Utilize Free</h4></a>
                                <p>Why do you want to motivate yourself? Actually, just answering that question fully can </p>
                                <h6 class="date title_color">31st January,2018</h6>
                            </div>	
                        </div>
                    </div>
                </div>
            </div>
        </section>

		<!--================ end guide Area  =================-->
				<section class="testimonial_area section_gap">
		            <div class="container">
		                <div class="section_title text-center">
		                    <h2 class="title_color">熱門出團導遊</h2>
		                    <p>跟著廣受好評的熱門導遊一起快樂出團趣</p>
		                </div>
		                <div class="testimonial_slider owl-carousel" style="height:300px">
		                    <div class="media testimonial_item">
		                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
		                        <div class="media-body">
		                            <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
		                            <a href="#"><h4 class="sec_h4">游敦凱</h4></a>
		                            <div class="star">
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star-half-o"></i></a>
		                            </div>
		                        </div>
		                    </div>    
		                    <div class="media testimonial_item">
		                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
		                        <div class="media-body">
		                            <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
		                            <a href="#"><h4 class="sec_h4">徐寧翰</h4></a>
		                            <div class="star">
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star-half-o"></i></a>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="media testimonial_item">
		                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
		                        <div class="media-body">
		                            <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
		                            <a href="#"><h4 class="sec_h4">徐逸誠</h4></a>
		                            <div class="star">
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star-half-o"></i></a>
		                            </div>
		                        </div>
		                    </div>    
		                    <div class="media testimonial_item">
		                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
		                        <div class="media-body">
		                            <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
		                            <a href="#"><h4 class="sec_h4">杜佳玲</h4></a>
		                            <div class="star">
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star-half-o"></i></a>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="media testimonial_item">
		                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
		                        <div class="media-body">
		                            <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
		                            <a href="#"><h4 class="sec_h4">陳左</h4></a>
		                            <div class="star">
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star-half-o"></i></a>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="media testimonial_item">
		                        <img class="rounded-circle" src="image/testtimonial-1.jpg" alt="">
		                        <div class="media-body">
		                            <p>As conscious traveling Paupers we must always be concerned about our dear Mother Earth. If you think about it, you travel across her face, and She is the </p>
		                            <a href="#"><h4 class="sec_h4">黃羿儒</h4></a>
		                            <div class="star">
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star"></i></a>
		                                <a href="#"><i class="fa fa-star-half-o"></i></a>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </section>
		<!--================ end guide Area  =================-->

        <!--================footer Area  =================-->
        <jsp:include page="frontLayout/frontFooter.jsp" />               
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