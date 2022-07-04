<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

        <c:set var="contextRoot" value="${pageContext.request.contextPath}" />

        <jsp:include page="layout/header.jsp" />

        <div class="content-container" style="text-align:center">

          <div align="center">

            <fieldset id="formFieldset">

              <legend id="guideLegend">查無您所指定的資訊</legend>

              <div id="GIFormContainer1">
                請返回重新搜尋
              </div>

              <div class="btn-container">
                <button type="button" class="btn btn-outline-secondary"
                  onclick="location.href='${contextRoot}/guidemanagement?p=${sessionScope.pgn}'">返回</button>
              </div>

            </fieldset>

          </div>

          <script>

          </script>
          <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

          <jsp:include page="layout/footer.jsp" />