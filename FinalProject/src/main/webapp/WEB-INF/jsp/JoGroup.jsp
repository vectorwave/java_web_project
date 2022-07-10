<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <!-- jsFiddle will insert css and js -->
  

  <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

<script>
document.cookie = 'cookie3=value3';

var lat2 = getCookie("lat1");
console.log(lat2);
var long2 = getCookie("long1");
console.log(long2);
  function initMap() {
    const map = new google.maps.Map(document.getElementById("map"), {
      zoom: 8,
      center: { lat: 40.714224, lng: -73.961452 },
    });
    const geocoder = new google.maps.Geocoder();
    const infowindow = new google.maps.InfoWindow();

    geocodeLatLng(geocoder, map, infowindow);

    document.getElementById("submit").addEventListener("click", () => {
      geocodeLatLng(geocoder, map, infowindow);
    });
  }

  function geocodeLatLng(geocoder, map, infowindow) {
    const input = document.getElementById("latlng").value;
    const latlngStr = input.split(",", 2);
    const latlng = {
  		  
  		  lat:parseFloat(lat2),
  		  lng:parseFloat(long2)
//      lat: parseFloat(latlngStr[0]),
  //    lng: parseFloat(latlngStr[1]),
////      lat:40.714224,
  ///   lng:-73.961452   

    };

    geocoder
      .geocode({ location: latlng })
      .then((response) => {
        if (response.results[0]) {
          map.setZoom(11);

          const marker = new google.maps.Marker({
            position: latlng,
            map: map,
          });

          infowindow.setContent(response.results[0].formatted_address);
          var kris=response.results[0].formatted_address;
          console.log(kris);
          setCookie("address",kris);
          var address1 = getCookie("address");
          var address2=address1.substring(5,8)
          console.log(address1);
          console.log(address2);

//           document.getElementById(
//             "result"
//           ).innerHTML = `<h1 style="text-align:center;" >${response.results[0].formatted_address}</h1>`;
          
          infowindow.open(map, marker);
        } else {
          window.alert("No results found");
        }
      })
      .catch((e) => window.alert("Geocoder failed due to: " + e));
  }
  function getCookie(name){
  	var arr,reg = new RegExp("(^|)" + name + "=([^;]*)(;|$)");
  	if(arr = document.cookie.match(reg))
  		return unescape(arr[2]);
  	else
  		return null;
  }
  
  function setCookie(name,value){
  	document.cookie = name + "=" +escape(value) +";path=/";
  }




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
// 		    Swal.fire(
// 		      'Deleted!',
// 		      'Your file has been deleted.',
// 		      'success'
// 		    )
			document.location.href='http://localhost:8081/jotravel/back/article/JoGroupUpdate/'+e;
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
// 		    Swal.fire(
// 		      'Deleted!',
// 		      'Your file has been deleted.',
// 		      'success'
// 		    )
			document.location.href='http://localhost:8081/jotravel/back/article/JoGroup/delete/'+e;
		  }else if (result.isDenied) {
			  
			    return false;
			  }
		});
 }


 </script>
 <style>
 
  .para{  
  
    width: 140px;   
     word-break: break-all;   
      text-overflow: ellipsis;   
        display: -webkit-box;  
    -webkit-box-orient: vertical;  
    -webkit-line-clamp: 1;  
   overflow: hidden;
   padding:40px 10px 0px 0px; 
text-align:center;
   }   
 .para1{  
  
    width: 120px;   
     word-break: break-all;   
      text-overflow: ellipsis;   
        display: -webkit-box;  
    -webkit-box-orient: vertical;  
    -webkit-line-clamp: 1;  
   overflow: hidden;
   padding:40px 10px 0px 0px; 
text-align:center;
   }   
 
 </style>
 <div style="visibility:hidden">
  <div id="floating-panel">
      <input id="latlng" type="text" value="40.714224,-73.961452" />
      <input id="submit" type="button" value="Reverse Geocode" />
    </div>

    <div id="result"></div>

    <div style="visibility:hidden" id="map"></div></div>
<!--     <div id="map"></div> -->

    <br /><br />

    <!-- Async script executes immediately and must be after any DOM elements used in callback. -->
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmEBK0G5eNsuBCbrJzIYY88lee1rT_S_o&callback=initMap&v=weekly&channel=2"
      async
    ></script>
<div id="result"></div>

    <div style="visibility:hidden" id="map"></div>
<div id="kkk">
<br>

<%-- <form action="/jotravel/JoGroup/all" method="get" > --%>
<!-- <input type="text" name="key" placeholder="搜尋文章名稱" id="key"> <input type="submit" id="send" value="🔍" > <a href="http://localhost:8081/jotravel/article/all"><input type="button" value="全部文章" ></a>   -->
<%-- </form> --%>
<br><br>

  
   
  
    <table style="text-align:center ;">
<tr>
			   <th width='80'>帖子編號</th>
			   <th width='120'>帖子標題</th>
			   <th width='80'>帖子分類</th>
			   <th width='80'>揪團值</th>
			   <th width='100'>揪團狀態</th>		   
			   <th width='156'>帖子內容</th>

			   <th width='80'>會員ID</th>			   
<!-- 			   <th width='80'>照片ID</th> -->


			   <th width='80'>照片</th>
			   <th width='156' >更新時間</th>
			  
			   <th  width='160'colspan="2">更新📝/刪除🗑️
			</tr>
			<c:forEach var="value" items="${page.content}">

 <c:choose>

   <c:when test="${value.articleJogroup>10}">
   <tr style="background-color:#2D6E7F">
     
  
                            
<td style="border-radius:  20px 0px 0px 20px;"><c:out value="${value.articleId}" /></td>

<td class="para1"><c:out value="${value.articleTitle}" /></td>

<td><c:out value="${value.articleCategory}" /></td>

<td ><c:out value="${value.articleJogroup}" /></td>

<td style="color:#F6C987 ;font-weight: bold; font-family:; font-size: 20px;">揪團成功</td>

<td class="para" style="text-align:center"><div id="coolAlign" style="text-align:center"><c:out value="${value.articleText}" /></div></td>


<td><c:out value="${value.account.accountId}" /></td>


<td><img src="${contextRoot}/back/article/photo/${value.articleId}" width="100px" height="100px"></td>
<td><c:out value="${value.articleDate}" /></td>
<%--  <td  class="btn"><a href="${contextRoot}/back/article/delete/${value.articleId}"><button class="btn1" id="delete" onclick="return del()">🗑️</button></a> --%>
<%--  <td class="btn"><a href="${contextRoot}/back/article/update/${value.articleId}"><button class="btn1">📝</button></a> --%>
<td><button class="delt" onclick="upd('${value.articleId}')" >📝</button></td> 
<td style="border-radius:  0px 20px 20px 0px;"><button class="delt" onclick="del('${value.articleId}')" >🗑️</button></td> 


</tr>
</c:when>
   
   <c:otherwise>
    <tr>
   <td><c:out value="${value.articleId}" /></td>

<td class="para1"><c:out value="${value.articleTitle}" /></td>

<td><c:out value="${value.articleCategory}" /></td>

<td><c:out value="${value.articleJogroup}" /></td>

<td >揪團尚未成功，同志仍須努力</td>


<td class="para"><c:out value="${value.articleText}" /></td>


<td><c:out value="${value.account.accountId}" /></td>


<td><img src="${contextRoot}/back/article/photo/${value.articleId}" width="100px" height="100px"></td>
<td><c:out value="${value.articleDate}" /></td>
<%--  <td  class="btn"><a href="${contextRoot}/back/article/delete/${value.articleId}"><button class="btn1" id="delete" onclick="return del()">🗑️</button></a> --%>
<%--  <td class="btn"><a href="${contextRoot}/back/article/update/${value.articleId}"><button class="btn1">📝</button></a> --%>
<td><button class="delt" onclick="upd('${value.articleId}')" >📝</button></td> 
<td><button class="delt" onclick="del('${value.articleId}')" >🗑️</button></td> 
</tr>
   </c:otherwise>
</c:choose>
</c:forEach>
</table>
      
      

      <br>
   
  
<div style="text-align: center;">
<c:forEach begin="1" end="${page.totalPages}" var="p">
<a href="${contextRoot}/JoGroup/all?p=${p}"><button type="button" class="btn btn-outline-secondary"><c:out value="${p}"/></button></a>
</c:forEach>

  
  
 
  
  <br />
  

 
   <c:forEach var="pageNumber" begin="1" end="${page.totalPages}"></c:forEach>
   

  </div>

</div>


<jsp:include page="layout/footer.jsp" />