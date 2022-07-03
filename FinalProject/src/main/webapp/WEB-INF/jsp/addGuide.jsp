<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

        <c:set var="contextRoot" value="${pageContext.request.contextPath}" />

        <jsp:include page="layout/header.jsp" />

        <div class="content-container">

          <div align="center">

            <fieldset id="formFieldset">
              <legend id="guideLegend">新增導遊資料</legend>

              <div id="GIFormContainer1">

                <div align="center">

                <table>
                  <form:form class="form" method="post" modelAttribute="addGuide"
                    action="${contextRoot}/guide_info/insert" enctype="multipart/form-data">

                    <tr>
                      <td class="formContent" colspan="2" align="center"><img class="guide_pic"
                           width="250" src="" id="output" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">個人圖片： </label></td>
                      <td class="formContent"><input class="form-control" type="file" name="profilePic" id="formFile"
                          accept="image/*" style="width:250px;height: 35px;" onchange="loadFile(event)"></td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">帳號： </label></td>
                      <td class="formContent"><input type="text" name="accountName" class="inputBoxAdd" id="idAcc" />
                      </br><span class="check" id="accountCheck"></span>
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">密碼： </label></td>
                      <td class="formContent"><input type="password" name="pwd" class="inputBoxAdd" />
                      </br><span class="check" id="pwdCheck"></span>
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">商家名稱： </label></td>
                      <td class="formContent">
                        <form:input path="profileName" class="inputBoxAdd" />
                      </br><span class="check" id="gNameCheck"></span>
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">姓名： </label></td>
                      <td class="formContent">
                        <form:input path="guideName" class="inputBoxAdd" />
                      </br><span class="check" id="nameCheck"></span>
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">個人簡述： </label></td>
                      <td class="formContent">
                        <form:textarea path="guideDescription" class="textareaAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">生日： </label></td>
                      <td class="formContent">
                        <form:input type="date" path="guideBirthday" class="inputBoxAdd" />
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">性別： </label></td>

                      <td class="formContent">
                        <div class="btn-group" role="group" aria-label="Basic radio toggle button group"
                          style="float:right; margin-right: 50px;">
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
                        </div>
                      </td>

                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">聯絡電話： </label></td>
                      <td class="formContent">
                        <form:input path="guidePhone" class="inputBoxAdd" />
                      </br><span class="check" id="phoneCheck"></span>
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">電子郵件： </label></td>
                      <td class="formContent">
                        <form:input path="guideEmail" class="inputBoxAdd" />
                      </br><span class="check" id="mailCheck"></span>
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">聯絡地址： </label></td>
                      <td class="formContent">
                        <form:textarea path="guideAddress" class="textareaAdd" />
                      </br><span class="check" id="addressCheck"></span>
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"><label class="GIFLabel">證照類型： </label></td>
                      <td class="formContent">
                        <form:input path="licenceType" class="inputBoxAdd" />
                      </br><span class="check" id="licenceCheck"></span>
                      </td>
                    </tr>

                    <tr>
                      <td class="formLabel"> <label class="GIFLabel">證照號碼： </label></td>
                      <td class="formContent">
                        <form:input path="licenceNo" class="inputBoxAdd" />
                      </br><span class="check" id="lnoCheck"></span>
                      </td>
                    </tr>

                    <tr>
                      <td colspan="2"><div class="btn-container" style="margin-top:20px" align="center">
                       <button type="button" onclick="submitForm(form)"
                            class="btn btn-outline-success" id="submitBtn">送出</button>
                      </div></td>
                    </tr>
                  </form:form>

                </table>
              </div>
            </div>

              <script>
          //欄位驗證

          document.getElementById('idAcc').addEventListener('blur',checkAccount,false)

          function checkAccount(){
            var accountFlag = false;
            let accountObject = document.getElementById('idAcc');
            let accountVal = accountObject.value;
            let accLength = accountVal.length;
            let msg = document.getElementById('accountCheck');
            let con = /^[a-zA-Z0-9 ]+$/;

            console.log(con.test(accountVal))

            if(accountVal == ""){
              msg.innerHTML= "帳號不可為空白!";
            } else if(con.test(accountVal) && accLength >= 6 && accLength <= 12 ){
              msg.innerHTML="OK!";
              accountFlag = true;
            } else {
              msg.innerHTML= "帳號須為6-12字元的英數字";
            }
          };




          // 圖片處理
          var loadFile = function (event) {
            var output = document.getElementById('output');
            output.src = URL.createObjectURL(event.target.files[0]);
            output.onload = function () {
              URL.revokeObjectURL(output.src) // free memory
            }
          };

                function submitForm(form) {
                  Swal.fire({
                    title: '確認新增導遊帳號？',
                    showDenyButton: true,
                    confirmButtonText: '確認',
                    denyButtonText: '取消',
                  }).then((result) => {
                    /* Read more about isConfirmed, isDenied below */
                    if (result.isConfirmed) {
                      // 		    Swal.fire('Saved!', '', 'success')
                      Swal.fire('已成功新增！', '', 'success').then(() => { form.submit(form); });

                    } else if (result.isDenied) {

                      return false;
                    }
                  })
                }
              </script>
              <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

            </fieldset>

          </div>
          </div>

          <jsp:include page="layout/footer.jsp" />