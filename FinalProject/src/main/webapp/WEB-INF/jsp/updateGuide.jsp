<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

        <c:set var="contextRoot" value="${pageContext.request.contextPath}" />

        <jsp:include page="layout/header.jsp" />

        <div class="content-container">

          <div align="center">

            <fieldset id="formFieldset">
              <legend id="guideLegend">修改導遊資料</legend>

              <div id="GIFormContainer1">

                <div align="center">
                  <table>
                    <form:form class="form" method="post" modelAttribute="guideUpdate"
                      action="${contextRoot}/guide_info/edit" enctype="multipart/form-data">

                      <tr>
                        <td class="formContent" colspan="2" align="center"><img class="guide_pic"
                            src="${contextRoot}/guide_info/photo/${guideUpdate.accountId}" width="250" id="output" />
                        </td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">個人圖片： </label></td>
                        <td class="formContent"><input class="form-control" type="file" name="profilePic" id="formFile"
                            accept="image/*" style="width:250px;height: 35px;" onchange="loadFile(event)"></td>
                      </tr>

                      <tr>
                        <td class="formLabel"><label class="GIFLabel">會員編號： </label></td>
                        <td class="formContent">
                          <form:input path="accountId" readonly="true" class="inputBox1" id="accountId"/>
                        </td>
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
                          <form:input path="guideBirthday" class="inputBoxAdd" />
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
                            <c:set var="guideGender" value="${guideUpdate.guideGender}" />
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
                          <div class="btn-container" style="margin-top:20px" align="center"> <button type="button" onclick="updateGuide(form)"
                              class="btn btn-outline-success">修改</button>
                            <button type="button" class="btn btn-outline-secondary" onclick="history.go(-1)">取消</button>
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

        <script>
console.log(accountId);

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

          var Test = '${guideUpdate.guideGender}';

          console.log(Test);

          if (Test == '男性') r1.checked = true;
          if (Test == '女性') r2.checked = true;
          if (Test == '保密') r3.checked = true;


          function updateGuide(form) {

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

        <jsp:include page="layout/footer.jsp" />