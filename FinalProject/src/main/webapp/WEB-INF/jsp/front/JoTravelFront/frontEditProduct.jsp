<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
      <head>
		<script src="<c:url value="/js/blog/jquery-3.2.1.min.js"/>"></script>
		
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="image/favicon.png" type="image/png">
        <title>Insert Product</title>
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

<section class="breadcrumb_area">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">Insert Product</h2>
                    <ol class="breadcrumb">
                        <li><a href="${contextRoot}/front/addProduct">Insert Product</a></li>
                    </ol>
                </div>
            </div>
        </section>
<br/>

<div class="container">


<h1> ???????????? </h1>

<form:form method="post" action="/jotravel/back/product/editFrontProduct" modelAttribute="newPd" enctype="multipart/form-data">


  <form:input path="productId" type="hidden" />
  <form:input path="account" type="hidden" />
  
  
  <div class="form-group">

  ???????????????<input type="text" class="form-control" disabled="disabled" value="${newPd.account.accountId}"/><br/>
  ???????????????<form:input type="text" path="productName" class="form-control"/><br/>
  ???????????????<form:input type="text" path="productPrice" class="form-control"/><br/>
  ???????????????<form:input type="date" path="startDate" class="form-control"/><br/>
  ???????????????<form:input type="date" path="endDate" class="form-control"/><br/>

  ???????????????<img src="${contextRoot}/back/product/photo/${photo}" id="output" width="300" height="300"/><br/><br/>
  <input type="file" class="form-control" name="file" accept="image/*" onchange="loadFile(event)"/><br/>
<!-- 	<img id="output" width="300" height="300"/> -->
 ????????????:<form:select path="productArea" class="form-select" required="required">
  <form:option value="??????" >??????</form:option>
  <form:option value="??????">??????</form:option>
  <form:option value="??????">??????</form:option>
  <form:option value="??????">??????</form:option>
  <form:option value="??????">??????</form:option>
</form:select>
<br/>
  ????????????(50??????):<form:input type="text" path="productSimpleDescription" class="form-control" maxlength="50" required="required"/><br/>


  ????????????(300??????):<form:input type="textarea" path="productDescription" class="form-control" maxlength="300" required="required"/><br/>
  
  
  ????????????:<form:select path="status" class="form-select" required="required">
  <form:option value="??????" >??????</form:option>
  <form:option value="??????">??????</form:option>
</form:select>
  </div>
  
<!--   <input type="submit" name="submit" value="??????"> -->
  <input onclick="submitForm(form)" type="button" class="btn btn-primary" value="??????">
  </form:form>



</div>



 <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
 		<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> 
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
 
  
 <script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
      URL.revokeObjectURL(output.src) // free memory
    }
  };
  
//   ------------sweet alert
  function submitForm(form){
	  Swal.fire({
		  title: '???????????????????',
		  showDenyButton: true,
		  confirmButtonText: '??????',
		  denyButtonText: '????????????',
		}).then((result) => {
		  /* Read more about isConfirmed, isDenied below */
		  if (result.isConfirmed) {
// 		    Swal.fire('Saved!', '', 'success')
		    form.submit(form);
		    
		  } else if (result.isDenied) {
		    
		    return false;
		  }
		})
  }
  
</script>  
 
<jsp:include page="frontLayout/frontFooter.jsp" />               

<!--================ End footer Area  =================-->
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        
    </body>
</html>