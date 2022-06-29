
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
 
<jsp:include page="layout/header.jsp" />

<div class="content-container">
    
<fieldset style="height:550px">

<legend>商家管理 </legend>

<div class="tableContainer">

<table style="position: relative;">
    <div class="btn-group" style="position: absolute; top:50px; right:50px">
        <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="">
            <input id="btnradio1" autocomplete="off" name="btnradio" class="btn-check" type="radio" value="編號" checked="checked"/>
            <label class="btn btn-outline-dark" for="btnradio1" id="infoBtn" style="border-radius: 5px 0px 0px 5px;">編號</label>
    
            <input id="btnradio2" autocomplete="off" name="btnradio" class="btn-check" type="radio" value="名稱"/>
            <label class="btn btn-outline-dark" for="btnradio2" id="infoBtn" style="border-radius: 0px 5px 5px 0px;">名稱</label>
        </div>
        <input type="text"  placeholder="輸入搜尋..." style="height: 30px;border-radius: 5px;">
      </div>

<tr class="thContent">
<th>編號</th>
<th>圖片</th>
<th>主頁名稱</th>
<th>姓名</th>
<th>證照類型</th>
<th>連絡電話</th>
<th>電子郵件</th>
<th> </th>
</tr>
<c:forEach var="guide" items="${page.content}">
<tr class="tdContent">
<td style="border-radius: 20px 0px 0px 20px"><c:out value="${guide.accountId}"/><c:set var="guideId" value="${guide.accountId}" scope="page"/></td>
<td style="width:80px"><img class="guide_pic" src="${contextRoot}/guide_info/photo/${guide.accountId}" width="80"/></td>
<td style="width:200px"><c:out value="${guide.profileName}"/></td>
<td style="width:130px"><c:out value="${guide.guideName}"/></td>
<td style="width:150px"><c:out value="${guide.licenceType}"/></td>
<td style="width:130px"><c:out value="${guide.guidePhone}"/></td>
<td style="width:200px"><c:out value="${guide.guideEmail}"/></td>
<td style="border-radius: 0px 20px 20px 0px;width:130px">
    </a><button type="button" class="btn btn-outline-dark" id="infoBtn" onclick="location.href='${contextRoot}/guidemanagement/info/${guide.accountId}'">詳細資訊</button>
</td>
</tr>
</c:forEach>
</table>

</div>


<script>
var pg='${page.number +1}';

console.log(pg)


</script>


</fieldset>

<!--頁籤-->
<div class="row justify-content-center" style="text-align:center; margin-top: 10px;">
    <div class="col-7">

        <c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
            <c:choose>
                <c:when test="${page.number != pageNumber -1}">

                    <a href="${contextRoot}/guidemanagement?p=${pageNumber}"><button type="button" class="btn btn-outline-secondary"><c:out value="${pageNumber}"/>  </button></a>

                </c:when>
                <c:otherwise>

                <a class="btn btn-secondary disabled" role="button" aria-disabled="true"> ${pageNumber} </a>

                <c:set var="pgn" value="${page.number +1}" scope="session"/>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </div>
</div>

</div>

<jsp:include page="layout/footer.jsp" />