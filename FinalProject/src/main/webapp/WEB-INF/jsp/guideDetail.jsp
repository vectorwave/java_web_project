
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
 
<jsp:include page="layout/header.jsp" />

<div class="content-container">
    
<fieldset>
<legend>導遊詳細資訊</legend>

<div id="GIFormContainer1">

    <form:form class="form" method="post" modelAttribute="guideInfo">


<div id="leftPart">

  <img class="guide_pic" src="${contextRoot}/guide_info/photo/${guideInfo.accountId}" width="150"/></br></br></br>

  <label class="GIFLabel">會員編號： </label>
  <form:input path="accountId" readonly="true" class="inputBox1"/></br></br></br>

  <label class="GIFLabel">主頁名稱： </label>
  <form:input path="profileName" readonly="true" class="inputBox1"/></br></br></br>

  <label class="GIFLabel">姓名： </label>
  <form:input path="guideName" readonly="true" class="inputBox1"/></br></br></br>

  <label class="GIFLabel">個人簡述： </label>
  <form:textarea path="guideDescription" readonly="true" class="textarea1"/></br></br></br>
</div>

<div id="rightPart">
  <label class="GIFLabel">生日： </label>
  <form:input path="guideBirthday" readonly="true" class="inputBox1"/></br></br></br>

  <label class="GIFLabel">性別： </label>
  <form:input path="guideGender" readonly="true" class="inputBox1"/></br></br></br>

  <label class="GIFLabel">聯絡電話： </label>
  <form:input path="guidePhone" readonly="true" class="inputBox1"/></br></br></br>

  <label class="GIFLabel">電子郵件： </label>
  <form:input path="guideEmail" readonly="true" class="inputBox1"/></br></br></br>

  <label class="GIFLabel">聯絡地址： </label>
  <form:textarea path="guideAddress" readonly="true" class="textarea1"/></br></br></br>

  <label class="GIFLabel">證照類型： </label>
  <form:input path="licenceType" readonly="true" class="inputBox1"/></br></br></br>


  <label class="GIFLabel">證照號碼： </label>
  <form:input path="licenceNo" readonly="true" class="inputBox1"/></br></br></br>
</div>

    </form:form>

</div>
</fieldset>
<a  href="${contextRoot}/guidemanagement/update/${guideInfo.accountId}"><button type="button" class="btn btn-primary">修改</button></a>
<button type="button" onclick="deleteGuide()" class="btn btn-danger">刪除</button>

<button type="button" class="btn btn-secondary" onclick="location.href='${contextRoot}/guidemanagement?p=${sessionScope.pgn}'">返回</button>
</div>

<script>
function deleteGuide(){
    Swal.fire({
        title: '確認刪除導遊帳號？',
        showDenyButton: true,
        confirmButtonText: '確認',
        denyButtonText: '取消',
      }).then((result) => {
        /* Read more about isConfirmed, isDenied below */
        if (result.isConfirmed) {
// 		    Swal.fire('Saved!', '', 'success')
        location='${contextRoot}/guide_info/delete/${guideInfo.accountId}'
          
        } else if (result.isDenied) {
          
          return false;
        }
      })
}
</script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script> 

<jsp:include page="layout/footer.jsp" />