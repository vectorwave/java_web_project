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
        <title>查看商品評論 - JoTravel</title>
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
          
          .thContent * {
  padding:5px 15px 5px 15px;
  text-align: center;
}

.tdContent * {
  padding:5px 15px 5px 15px;
  text-align: center;
}

          
          </style>



    </head>
    <body style="background-color:aliceblue">
        <!--================Header Area =================-->

        <jsp:include page="frontLayout/frontHeader.jsp" />

<section class="breadcrumb_area">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>


            <div class="container">


                <div class="page-cover text-center">
                    <h2 class="page-cover-tittle">商品評論</h2>
                    <ol class="breadcrumb">
                        <li><a href="${contextRoot}/front/addProduct">查看商品評論</a></li>
                    </ol>
                </div>
            </div>
        </section>
<br/>

<div class="container" align="center" style="margin-bottom: 80px;">

  <h1 align="left" style="margin-left:60px;">所有評論</h2>

  <div style="padding:25px 8px 25px 8px;background-color: white; border-radius: 30px;">


<table>
                                <tr class="thContent" style="white-space:nowrap">
                                  <th>評論編號<th>商品名稱<th>會員名稱<th>評論內容<th>分數(滿分5分)<th>更新時間
                                    </tr>
                                
                                <div>
                                <c:forEach var="value" items="${searchPdC}">
                                <tr class="tdContent">
                                <td style="border-radius: 20px 0px 0px 20px"> <c:out value="${value.prouctCommentId}"/></td>
                                <td> <c:out value="${value.product.productName}"/></td>
                                <td> <c:out value="${value.account.accountName}"/></td>
                                <td> <c:out value="${value.productComment}"/></td>     	
                                <td> <c:out value="${value.commentScore}"/></td>     	
                                <td><fmt:formatDate pattern="yyyy 年 MM 月 dd 日 a hh:mm:ss " value="${value.updatedTime}"/></td> 
                                </tr>
                                </c:forEach>
                                </div>
                                </table>

                                

</div>

<div style="margin-top:20px;;">
                                <button type="button" class="genric-btn success circle" onclick="history.go(-1)">回上頁</button></div>

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
 function del(e) {
	  if (confirm("確認要執行嗎?") == true) {
	   return true
	  } else {
	   window.event.returnValue = false; 
	  }
	 };

	 button.forEach(delt => {
	  delt.addEventListener('click', del);
	  });
	 
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
				  
				document.location.href='http://localhost:8081/jotravel/back/productcomment/editProductComment?id='+e;
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

				document.location.href='http://localhost:8081/jotravel/back/productcomment/delete/'+e;
			  }else if (result.isDenied) {
				  
				    return false;
				  }
			});
	 }
</script> 
 
<jsp:include page="frontLayout/frontFooter.jsp" />               

<!--================ End footer Area  =================-->
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        
    </body>
</html>