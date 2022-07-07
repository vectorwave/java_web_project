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
        <title>導遊商品管理 - JoTravel</title>
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
                    <h2 class="page-cover-tittle">導遊商品管理</h2>
                    <ol class="breadcrumb">
                        <li><a href="${contextRoot}/front/addProduct">上架行程</a></li>
                    </ol>
                </div>
            </div>
        </section>
<br/>

<section class="about_history_area section_gap">
    <div class="container" style="margin-bottom:50px;margin-top:50px;">
      <div class="row" align="center">

        <div class="content-container">

          <div style="margin-left:200px;">

            <fieldset id="formFieldset" style="background-color:rgb(247, 247, 247);">
              <div id="guideLegend" style="font-size:40px;font-weight:600;color:rgb(83, 83, 83); margin-top: 20px;margin-bottom: 20px;">
                上架行程</div>

              <div id="GIFormContainer1">

                <div align="center">
                  <table style="border-radius:  10px;">

                    <form:form class="form-floating" method="post" enctype="multipart/form-data"
                      action="${contextRoot}/back/product/frontAddProduct" modelAttribute="frontPd">
                      <form:input path="productId" type="hidden" />




                      <tr>
                        <td class="formLabel"><label class="GIFLabel">商家編號： </label></td>
                        <td class="formContent"><input name="accountId" id="accountId" class="form-control" type="text"
                            value="${loginuser.accountId}" readonly="readonly">
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">產品圖片：</label></td>
                        <td class="formContent">
                          <img id="output" width="300" height="300" /><br /><br />
                          <input type="file" class="form-control" name="file" accept="image/*"
                            onchange="loadFile(event)" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">產品名稱：</label></td>
                        <td class="formContent">
                          <form:input type="text" id="productName" path="productName" class="form-control"
                            required="required" placeholder="商品名稱" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">產品價格：</label></td>
                        <td class="formContent">
                          <form:input type="text" id="productPrice" path="productPrice" class="form-control"
                            value="1000" required="required" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel"> 上架時間：</label></td>
                        <td class="formContent">
                          <form:input type="date" id="startDate" path="startDate" class="form-control"
                            required="required" readonly="readonly" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">下架時間：</label></td>
                        <td class="formContent">
                          <form:input type="date" id="endDate" path="endDate" class="form-control" required="required"
                            readonly="readonly" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">區域分類:</label></td>
                        <td class="formContent">
                          <form:select path="productArea" id="productArea" class="form-select" required="required">
                            <form:option value="北部">北部</form:option>
                            <form:option value="東部">東部</form:option>
                            <form:option value="南部">南部</form:option>
                            <form:option value="西部">西部</form:option>
                            <form:option value="外島">外島</form:option>
                          </form:select>
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">商品簡述(50字內):</label></td>
                        <td class="formContent">
                          <form:input type="text" id="productSimpleDescription" path="productSimpleDescription"
                            class="form-control" maxlength="50" required="required" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">商品詳述(300字內):</label></td>
                        <td class="formContent">
                          <form:input type="textarea" id="productDescription" path="productDescription"
                            class="form-control" maxlength="300" required="required" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">上架狀態:</label></td>
                        <td class="formContent">
                          <form:select path="status" class="form-select" required="required">
                            <form:option value="上架">上架</form:option>
                            <form:option value="下架">下架</form:option>
                          </form:select>
                        </td>
                      </tr>





                      <tr>

                        <td colspan="2">


                          <div class="btn-container" style="margin-top:20px" align="center">

                            <input onclick="submitForm(form)" type="button" class="genric-btn primary circle"
                              value="新增商品">
                            <button type="button" class="genric-btn warning circle" onclick="history.go(-1)">取消</button>
                            <input type="button" id="one" class="genric-btn info circle" value="一鍵新增" />
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
  
  function submitForm(form){
	  Swal.fire({
		  title: '確認新增商品?',
		  showDenyButton: true,
		  confirmButtonText: '儲存',
		  denyButtonText: '繼續修改',
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
  
  $('#one').click(function(){
	  $('#productName').val("火辣辣墾丁重砲海陸三日遊");
	  $('#productPrice').val("6800");
	  $('#startDate').val("2022-07-01");
	  $('#endDate').val("2022-07-25");
	  $('#productArea').val("南部");
	  $('#productSimpleDescription').val("水上活動三選二,暢遊墾丁大街,包含兩天住宿,海鮮餐廳吃到飽!");
	  $('#productDescription').val("第一日:08:00台北火車站東三門集合,搭乘遊覽車直達墾丁,中餐為精選海陸合菜,下午自由行程,晚上暢遊墾丁大街,精選串燒酒吧,<br/>第二日:火辣辣比基尼衝浪,享受墾丁陽光<br/>第三日:早上遊玩恆春古蹟,中午啟程回家!");

	 })
  
</script> 
 
<jsp:include page="frontLayout/frontFooter.jsp" />               

<!--================ End footer Area  =================-->
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        
    </body>
</html>