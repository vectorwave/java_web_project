
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
 
<jsp:include page="layout/header.jsp" />

<div class="content-container">
    
<fieldset>
<legend>商家管理</legend>

<div class="tableContainer">

<table>
<tr class="thContent">
<th>編號</th>
<th>圖片</th>
<th>主頁名稱</th>
<th>姓名</th>
<th>證照類型</th>
<th>連絡電話</th>
<th>電子郵件</th>
<th>功能</th>
</tr>
<c:forEach var="guide" items="${page.content}">
<tr class="tdContent">
<td><c:out value="${guide.account}"/><c:set var="guideId" value="${guide.account}" scope="page"/></td>
<td><img class="guide_pic" src="${contextRoot}/guide_info/photo/${guide.account}" width="40"/></td>
<td><c:out value="${guide.profileName}"/></td>
<td><c:out value="${guide.guideName}"/></td>
<td><c:out value="${guide.licenceType}"/></td>
<td><c:out value="${guide.guidePhone}"/></td>
<td><c:out value="${guide.guideEmail}"/></td>
<td>
    </a><button type="button" class="btn btn-outline-info" id="infoBtn" onclick="location.href='${contextRoot}/guidemanagement/info/${guide.account}'">詳細資訊</button>
</td>
</tr>
</c:forEach>
</table>

</div>

<!--頁籤-->
<div class="row justify-content-center" style="text-align:center; margin-top: 10px;">
    <div class="col-7">

        <c:forEach var="pageNumber" begin="1" end="${page.totalPages}">
            <c:choose>
                <c:when test="${page.number != pageNumber -1}">
                    <a href="${contextRoot}/guidemanagement?p=${pageNumber}">
                        <c:out value="${pageNumber}"/>              
                        </a>
                </c:when>
                <c:otherwise>
                <c:out value="${pageNumber}"/>
                <c:set var="pgn" value="${page.number +1}" scope="session"/>
                </c:otherwise>
            </c:choose>
            <c:if test="${pageNumber!= page.totalPages}"><span> |</span></c:if>

        </c:forEach>
    </div>
</div>

<script>
var pg='${page.number +1}';

console.log(pg)

</script>


</fieldset>
</div>

<jsp:include page="layout/footer.jsp" />