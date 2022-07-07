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
        <title>JoTravel 導遊個人資料管理</title>
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

    <!-- 引入sweetalert2 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript"
	src="${contextRoot}/js/sweetalert2.all.min.js"></script>
<link href="${contextRoot}/css/sweetalert2.min.css" rel="stylesheet">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">

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
                    <h2 class="page-cover-tittle">個人資料管理</h2>
                    <!-- <ol class="breadcrumb">
                        <li><a href="#">會員中心</a></li>
                        <li class="active">個人資料管理</li>
                    </ol> -->
                </div>
            </div>
        </section>
        <!--================Breadcrumb Area =================-->
        

        <!--================ About Guide Area  =================-->
        <section class="about_history_area section_gap">
            <div class="container" style="margin-bottom:50px;margin-top:50px;">
                <div class="row">

    <div class="content-container">

        <div align="center">

          <fieldset id="formFieldset" style="background-color:rgb(247, 247, 247);">
            <legend id="guideLegend" style="font-size:40px;font-weight:600;color:rgb(83, 83, 83);">修改導遊資料</legend>

            <div id="GIFormContainer1">

              <div align="center">
                <table style="border-radius:  10px;">

                  <form:form class="form" method="post" modelAttribute="editGuideInfo"
                    action="${contextRoot}/guide_info/front/edit" enctype="multipart/form-data">

                    <tr>
                        <c:choose>
                            <c:when test="${empty editGuideInfo.guidePhoto}">

                                <td class="formContent" colspan="2" align="center"><div class="guide_pic"
                                    width="250" id="output" style="border-radius:30px"> </div>
                               </td>

                            </c:when>

                            <c:otherwise>
                     
                                <td class="formContent" colspan="2" align="center" style="border-radius:30px"><img class="guide_pic"
                                    src="${contextRoot}/guide_info/photo/${editGuideInfo.accountId}" width="250" id="output" />
                                </td>

                    </c:otherwise>
                        </c:choose>
                    </tr>

                    <form:input path="accountId" id="accountId" name="accountId" hidden="hidden"/>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">個人圖片： </label></td>
                      <td class="formContent"><input class="form-control" type="file" name="profilePic" id="formFile"
                          accept="image/*" style="width:250px;height: 35px;" onchange="loadFile(event)"></td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">主頁名稱： </label></td>
                      <td class="formContent">
                        <form:input path="profileName" class="inputBoxAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">姓名： </label></td>
                      <td class="formContent">
                        <form:input path="guideName" class="inputBoxAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">個人簡述： </label></td>
                      <td class="formContent">
                        <form:textarea path="guideDescription" class="textareaAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">生日： </label></td>
                      <td class="formContent">
                        <form:input type="date" path="guideBirthday" class="inputBoxAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">性別： </label></td>
                      <td class="formContent">
                        <div class="btn-group" role="group" aria-label="Basic radio toggle button group"
                          style="float:right; margin-right: 70px;">

                          <form:radiobutton path="guideGender" value="男性" class="btn-check" name="btnradio"
                            id="btnradio1" autocomplete="off" />
                          <label class="btn btn-outline-dark" for="btnradio1"
                            style="border-radius: 5px 0px 0px 5px;">男性</label>

                          <form:radiobutton path="guideGender" value="女性" class="btn-check" name="btnradio"
                            id="btnradio2" autocomplete="off" />
                          <label class="btn btn-outline-dark" for="btnradio2">女性</label>

                          <form:radiobutton path="guideGender" value="保密" class="btn-check" name="btnradio"
                            id="btnradio3" autocomplete="off" />
                          <label class="btn btn-outline-dark" for="btnradio3">保密</label>
                          <c:set var="guideGender" value="${editGuideInfo.guideGender}" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">聯絡電話： </label></td>
                      <td class="formContent">
                        <form:input path="guidePhone" class="inputBoxAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">電子郵件： </label></td>
                      <td class="formContent">
                        <form:input path="guideEmail" class="inputBoxAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">聯絡地址： </label></td>
                      <td class="formContent">
                        <form:textarea path="guideAddress" class="textareaAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">證照類型： </label></td>
                      <td class="formContent">
                        <form:input path="licenceType" class="inputBoxAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">證照號碼： </label></td>
                      <td class="formContent">
                        <form:input path="licenceNo" class="inputBoxAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td colspan="2">
                        <div class="btn-container" style="margin-top:20px" align="center"> <button type="button" onclick="editGuide(form)"
                            class="genric-btn primary circle">修改</button>
                          <button type="button" class="genric-btn warning circle" onclick="history.go(-1)">取消</button>
                        </div>
                      </td>
                    </tr>
                  </form:form>
                </table>
              </div>


            </div>

          </fieldset>
        </div>
      </div>


            </div>
        </section>
        <!--================ About Guide Area  =================-->
        <script>
            
                      // 圖片處理
                      var loadFile = function (event) {
                        var output = document.getElementById('output');
                        output.src = URL.createObjectURL(event.target.files[0]);
                        output.onload = function () {
                          URL.revokeObjectURL(output.src) // free memory
                        }
                      };
            
            
                      // 性別Radio
                      const r1 = document.getElementById('btnradio1');
                      const r2 = document.getElementById('btnradio2');
                      const r3 = document.getElementById('btnradio3');
            
                      var Test = '${editGuideInfo.guideGender}';
            
                      console.log(Test);
            
                      if (Test == '男性') r1.checked = true;
                      if (Test == '女性') r2.checked = true;
                      if (Test == '保密') r3.checked = true;
            
        
            
             function editGuide(form) {

            var formAcc = document.getElementById('accStatus');

                Swal.fire({
                  title: '確認修改導遊資料嗎？',
               showDenyButton: true,
                confirmButtonText: '確認',
                denyButtonText: '取消',
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