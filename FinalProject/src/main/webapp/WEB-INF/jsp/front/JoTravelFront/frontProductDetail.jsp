<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="image/favicon.png" type="image/png">
<title>Royal Hotel</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href='<c:url value="/css/blog/bootstrap.css"/>'>
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/linericon/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/nice-select/css/nice-select.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css"/>">
<!-- main css -->
<link rel="stylesheet" href="<c:url value="/css/blog/style.css"/>">
<link rel="stylesheet" href="<c:url value="/css/blog/responsive.css"/>">
<link rel="stylesheet" href="<c:url value="/css/blog/responsive.css"/>">
<link rel="stylesheet" href="<c:url value="/css/core-style"/>">
<script type="text/javascript" src="${contextRoot}/js/js.cookie.min.js"> </script>
<script type="text/javascript" src="${contextRoot}/js/sweetalert2.all.min.js"> </script>
</head>
<body style="font-size: larger">
	<!--================Header Area =================-->
	<jsp:include page="frontLayout/frontHeader.jsp" />


	<!--         <header class="header_area"> -->
	<!--             <div class="container"> -->
	<!--                 <nav class="navbar navbar-expand-lg navbar-light"> -->
	<!--                     Brand and toggle get grouped for better mobile display -->
	<%--                     <a class="navbar-brand logo_h" href="index.html"><img src="<c:url value="/images/blog/Logo.png"/>" alt=""></a> --%>
	<%-- <%--                     <a class="navbar-brand logo_h" href="index.html"><img src="<c:url value="/image/Logo.png"> alt=""></a> --%>
	<!--                     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> -->
	<!--                         <span class="icon-bar"></span> -->
	<!--                         <span class="icon-bar"></span> -->
	<!--                         <span class="icon-bar"></span> -->
	<!--                     </button> -->
	<!--                     Collect the nav links, forms, and other content for toggling -->
	<!--                     <div class="collapse navbar-collapse offset" id="navbarSupportedContent"> -->
	<!--                         <ul class="nav navbar-nav menu_nav ml-auto"> -->
	<!--                             <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>  -->
	<!--                             <li class="nav-item"><a class="nav-link" href="about.html">About us</a></li> -->
	<!--                             <li class="nav-item"><a class="nav-link" href="accomodation.html">Accomodation</a></li> -->
	<!--                             <li class="nav-item active"><a class="nav-link" href="gallery.html">Gallery</a></li> -->
	<!--                             <li class="nav-item submenu dropdown"> -->
	<!--                                 <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a> -->
	<!--                                 <ul class="dropdown-menu"> -->
	<!--                                     <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li> -->
	<!--                                     <li class="nav-item"><a class="nav-link" href="blog-single.html">Blog Details</a></li> -->
	<!--                                 </ul> -->
	<!--                             </li>  -->
	<!--                             <li class="nav-item"><a class="nav-link" href="elements.html">Elemests</a></li> -->
	<!--                             <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li> -->
	<!--                         </ul> -->
	<!--                     </div>  -->
	<!--                 </nav> -->
	<!--             </div> -->
	<!--         </header> -->
	<!--================Header Area =================-->

	<!--================Breadcrumb Area =================-->
	<section class="breadcrumb_area">
		<div class="overlay bg-parallax" data-stellar-ratio="0.8"
			data-stellar-vertical-offset="0" data-background=""></div>
		<div class="container">
			<div class="page-cover text-center">
				<h2 class="page-cover-tittle">Product Detail</h2>
				<ol class="breadcrumb">
					<li><a href="${contextRoot}/front/productPage">Product</a></li>
					<li class="active">Detail</li>
				</ol>
			</div>
		</div>
	</section>
	<!--================Breadcrumb Area =================-->

	<!-- Product Details Area Start -->

	<section class="gallery_area section_gap"
		style="padding: 10px 0px 10px 0px">

		<div class="single-product-area section-padding-100 clearfix">
			<div class="container-fluid">

				<!--  ==============左上連結Bar=================== -->
				
				<!--  ============== 商品圖片跑馬燈 =================== -->
				<div class="row">
					<div class="col-12 col-lg-7">
						<div class="single_product_thumb">
							<div id="product_details_slider" class="carousel slide"
								data-ride="carousel">
								<ol class="carousel-indicators">
									<li class="active" data-target="#product_details_slider"
										data-slide-to="0"
										style="background-image: url(img/product-img/pro-big-1.jpg);">
									</li>
									<li data-target="#product_details_slider" data-slide-to="1"
										style="background-image: url(img/product-img/pro-big-2.jpg);">
									</li>
									<li data-target="#product_details_slider" data-slide-to="2"
										style="background-image: url(img/product-img/pro-big-3.jpg);">
									</li>
									<li data-target="#product_details_slider" data-slide-to="3"
										style="background-image: url(img/product-img/pro-big-4.jpg);">
									</li>
								</ol>
								<div class="carousel-inner">
									<div class="carousel-item active">
										<a class="gallery_img" href="img/product-img/pro-big-1.jpg">
											<!--                                             <img class="d-block w-100" src="img/product-img/pro-big-1.jpg" alt="First slide"> -->
											<img class="d-block w-100"
											src="${contextRoot}/back/product/photo/${product.productId}"
											height="600px" alt="First slide">
										</a>
									</div>
									<!--                                     <div class="carousel-item"> -->
									<!--                                         <a class="gallery_img" href="img/product-img/pro-big-2.jpg"> -->
									<!--                                             <img class="d-block w-100" src="img/product-img/pro-big-2.jpg" alt="Second slide"> -->
									<!--                                         </a> -->
									<!--                                     </div> -->
									<!--                                     <div class="carousel-item"> -->
									<!--                                         <a class="gallery_img" href="img/product-img/pro-big-3.jpg"> -->
									<!--                                             <img class="d-block w-100" src="img/product-img/pro-big-3.jpg" alt="Third slide"> -->
									<!--                                         </a> -->
									<!--                                     </div> -->
									<!--                                     <div class="carousel-item"> -->
									<!--                                         <a class="gallery_img" href="img/product-img/pro-big-4.jpg"> -->
									<!--                                             <img class="d-block w-100" src="img/product-img/pro-big-4.jpg" alt="Fourth slide"> -->
									<!--                                         </a> -->
									<!--                                     </div> -->
								</div>
							</div>
						</div>
					</div>

					<div class="col-12 col-lg-5">
						<div class="single_product_desc">
							<!-- Product Meta Data -->
							<div class="product-meta-data">
								<div class="line"></div>

								<a href="product-details.html">
									<h6>${product.productName}</h6>
								</a>
								<!-- Ratings & Review 星星 -->
								<div
									class="ratings-review mb-15 d-flex align-items-center justify-content-between">
									<div class="ratings">
										<i class="fa fa-star" aria-hidden="true"></i> <i
											class="fa fa-star" aria-hidden="true"></i> <i
											class="fa fa-star" aria-hidden="true"></i> <i
											class="fa fa-star" aria-hidden="true"></i> <i
											class="fa fa-star" aria-hidden="true">5</i>
									</div>
									<!-- 商品名稱 -->
									<!--                                     <div class="review"> -->
									<!--                                         <a href="#">Write A Review</a> -->
									<!--                                     </div> -->

								</div>
								<!-- 商品特點簡述 -->
								<p class="avaibility">
									<i class="fa fa-circle"></i>${product.productSimpleDescription}</p>
							</div>

							<!--=====商品敘述====== -->
							<div class="short_overview my-5">
								<p>${product.productDescription}</p>
								<!--                                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid quae eveniet culpa officia quidem mollitia impedit iste asperiores nisi reprehenderit consequatur, autem, nostrum pariatur enim?</p> -->
							</div>

							<!-- Add to Cart Form -->
							<form class="cart clearfix" method="post">
								<div class="product-price">商品價格: &nbsp $
									${product.productPrice}</div>
								<div class="cart-btn d-flex mb-50">
									<p>商品數量: &nbsp &nbsp</p>
									<div class="quantity">
										<span class="qty-minus"
											onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i
											class="fa fa-caret-down" aria-hidden="true"></i></span> <input
											type="number" class="qty-text" id="qty" step="1" min="1"
											max="300" name="quantity" value="1"> <span
											class="qty-plus"
											onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i
											class="fa fa-caret-up" aria-hidden="true"></i></span>
									</div>
								</div>
								<div>
									旅遊起始日期: <input type="date" value="2022-07-05" id="date" />
								</div>
								天數: <input type="number" style="width:80px" min="1" value="1" id="totalDays"/>
								<br /> <br />
								<button type="button" name="addtocart" value="5"
									class="btn btn-primary" onclick="addToCart()">加入購物車</button>
							</form>
							<button name="addcomment" id="addcomment"
								onclick="upd('${product.productId}')" class="btn btn-primary">評論商品</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ===============Product Details Area End============ -->

	<!--================ start Product Comment Area  =================-->

	<div id=div2 style="margin: 10px; padding: 15px">
		<h4>商品評論區</h4>
		<div id="table1" style=""></div>
	</div>


	<!-- <table class="table" border="1"  id="table1" style="border: radius 100px;;"> -->
	<!-- <tr style="background-color:#e9ed8c"> -->
	<!-- <!-- <th>會員評論<th>滿意度<th>更新時間 -->
	<!-- </table> -->



	<!--================ end Product Comment  =================-->

	<!--================ start footer Area  =================-->
	<jsp:include page="frontLayout/frontFooter.jsp" />

	<!-- ================ End footer Area  =================-->


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="<c:url value="/js/blog/jquery-3.2.1.min.js"/>"></script>
	<script src="<c:url value="/js/blog/popper.js"/>"></script>
	<script src="<c:url value="/js/blog/bootstrap.min.js"/>"></script>
	<script
		src="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/js/blog/jquery.ajaxchimp.min.js"/>"></script>
	<script src="<c:url value="/js/blog/mail-script.js"/>"></script>
	<script
		src="<c:url value="/css/blog//vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"/>"></script>
	<script
		src="<c:url value="/css/blog//vendors/nice-select/js/jquery.nice-select.js"/>"></script>
	<script src="<c:url value="/js/blog/mail-script.js"/>"></script>
	<script src="<c:url value="/js/blog/stellar.js"/>"></script>
	<script
		src="<c:url value="/css/blog//vendors/lightbox/simpleLightbox.min.js"/>"></script>
	<script src="<c:url value="/js/blog/custom.js"/>"></script>


	<script type="text/javascript"> 
	
            $(function(){
	//   window.onload=function(){
		//查詢所有商品評論      	
      	 $.ajax({
            
      	     url:'http://localhost:8081/jotravel/back/productcomment/find?id='+<c:out value="${product.productId}"/>,
      	     method: 'get',
      	     contentType: 'application/json', // 送過去的 
      	     dataType: 'json',
      	     
      	     success: function(result){
      	    	$('#table1 tr td').remove()
      	        console.log("result=" +result)
      	        console.log("Id=" )
				
      	     	msg_data = ''     
      	     	$.each(result ,function(index ,value){
      	     		
      	     		msg_data += '會員: ' + value.account.accountName +' 評價:' + value.commentScore + '顆星'
                    msg_data += '<br/>更新時間:' + value.updatedTime + '<br/>'      	     		
      	            msg_data += '內容:' + value.productComment + '<hr>' 
      	            	
      	     	})
      	     	
      	     	$('#table1').append(msg_data)
      	     
      	     },
      	 
        	});
        });

        
        function upd(e){
            var sessionId =  ${loginuser.accountId}
            console.log(sessionId) 
            if( sessionId == undefined ){
                alert("請先登入才能開始評論!")
                console("等於null")
                return false;
            }else{
                console.log(true)
                document.location.href='http://localhost:8081/jotravel/back/ProductComment/add?id='+e;
            }    
        }

		function addToCart(){
			if(!Cookies.get('cart')){
				Cookies.set('cart','',{ expires: 365 });
			}
			var productId = ${product.productId};
			Cookies.set('cart',Cookies.get('cart')+productId+','+$('#qty').val()+','+$('#date').val()+','+$('#totalDays').val()+';',{ expires: 365 });
			new Swal('已加到購物車!!!');
		}
		
        </script>
</body>
</html>