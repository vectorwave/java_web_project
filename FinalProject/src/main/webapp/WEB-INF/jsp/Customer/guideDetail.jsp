<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

        <c:set var="contextRoot" value="${pageContext.request.contextPath}" />

        <jsp:include page="layout/header.jsp" />

        <div class="content-container" style="text-align:center">

          <div align="center">

            <fieldset id="formFieldset">

              <legend id="guideLegend">導遊詳細資訊</legend>

              <div id="GIFormContainer1">


                <div align="center">

                  <table>
                    <form:form class="form" method="post" modelAttribute="guideInfo">


                      <tr>
                        <td class="formContent" colspan="2" align="center"><img class="guide_pic"
                            src="${contextRoot}/guide_info/photo/${guideInfo.accountId}" width="250" /></td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">會員編號： </label></td>
                        <td class="formContent">
                          <form:input path="accountId" readonly="true" class="inputBox1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"> <label class="GIFLabel">主頁名稱： </label></td>
                        <td class="formContent">
                          <form:input path="profileName" readonly="true" class="inputBox1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">姓名： </label></td>
                        <td class="formContent">
                          <form:input path="guideName" readonly="true" class="inputBox1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">個人簡述： </label></td>
                        <td class="formContent">
                          <form:textarea path="guideDescription" readonly="true" class="textarea1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"> <label class="GIFLabel">生日： </label></td>
                        <td class="formContent">
                          <form:input path="guideBirthday" readonly="true" class="inputBox1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"> <label class="GIFLabel">性別： </label></td>
                        <td class="formContent">
                          <form:input path="guideGender" readonly="true" class="inputBox1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">聯絡電話： </label></td>
                        <td class="formContent">
                          <form:input path="guidePhone" readonly="true" class="inputBox1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">電子郵件： </label></td>
                        <td class="formContent">
                          <form:input path="guideEmail" readonly="true" class="inputBox1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">聯絡地址： </label></td>
                        <td class="formContent">
                          <form:textarea path="guideAddress" readonly="true" class="textarea1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">證照類型： </label></td>
                        <td class="formContent">
                          <form:input path="licenceType" readonly="true" class="inputBox1" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">證照號碼： </label></td>
                        <td class="formContent">
                          <form:input path="licenceNo" readonly="true" class="inputBox1" />
                        </td>
                      </tr>

                    </form:form>

                  </table>

                </div>

              </div>
              <div class="btn-container">
                <a href="${contextRoot}/guidemanagement/update/${guideInfo.accountId}"><button type="button"
                    class="btn btn-outline-primary">修改</button></a>
                <button type="button" onclick="deleteGuide()" class="btn btn-outline-danger">刪除</button>
                <button type="button" class="btn btn-outline-secondary"
                  onclick="location.href='${contextRoot}/guidemanagement?p=${sessionScope.pgn}'">返回</button>
              </div>

            </fieldset>

          </div>

          <script>
            function deleteGuide() {
              Swal.fire({
                title: '確認刪除導遊帳號？',
                showDenyButton: true,
                confirmButtonText: '確認',
                denyButtonText: '取消',
              }).then((result) => {
                /* Read more about isConfirmed, isDenied below */
                if (result.isConfirmed) {
                  // 		    Swal.fire('Saved!', '', 'success')
                  Swal.fire('已成功刪除！', '', 'success').then(() => { location = '${contextRoot}/guide_info/delete/${guideInfo.accountId}' });

                } else if (result.isDenied) {

                  return false;
                }
              })
            }
          </script>
          <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

          <jsp:include page="layout/footer.jsp" />