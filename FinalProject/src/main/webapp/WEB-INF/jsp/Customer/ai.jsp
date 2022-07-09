<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%-- <jsp:include page="layout/default.jsp"/> --%>
<jsp:include page="../front/JoTravelFront/frontLayout/frontHeader.jsp" />
<!DOCTYPE html>
<html>
<head>

  <!-- Mobile Specific Meta -->

	<!--
		CSS
		============================================= -->
	<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="image/favicon.png" type="image/png">
<title>Royal Hotel</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href='<c:url value="/css/blog/bootstrap.css"/>'>
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/linericon/style.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/nice-select/css/nice-select.css"/>">
<link rel="stylesheet"
	href="<c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css"/>">
<!-- main css -->
<link rel="stylesheet" href="<c:url value="/css/blog/style.css"/>">
<link rel="stylesheet" href="<c:url value="/css/blog/responsive.css"/>">
</head>
<style>

#ty{background:#ffffff;padding:1px;display:inline;font-size: 30px;color:#ff0000; font-weight: bolder  ;line-height:50px;border: black solid;border-radius: 10px;}
#tyu{background:#ffffff;padding:1px;display:inline;font-size: 10px;color:#ff0000; font-weight: bolder  ;line-height:50px;border: black solid;border-radius: 10px;}
#ty:first-child {
  text-shadow: 0px 0px 5px #fff; 
}

#ty:last-child{ text-shadow: 0px 0px 5px #fff,0px 0px 5px #fff,0px 0px 5px #fff,0px 0px 5px #fff;}

</style>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<body>

	
<body onload="onRuleLoaded()">

	<!-- Start Header Area -->
	
 <section class="breadcrumb_area">
            <div class="overlay bg-parallax" data-stellar-ratio="0.8" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="page-cover text-center">
                     <h2 class="page-cover-tittle">智能客服</h2>
                </div>
            </div>
        </section>
			<!-- 插入上導覽列 -->
			

	
	<!-- End Header Area -->

	<!-- Start Banner Area -->

	<!-- End Banner Area -->

  <div>
   <div style="position: relative;left: 30%;font-size: large;color: #090909;">請輸入問題：</div>
   <input style="position: relative;left: 30%;border: #090909 solid;" id="say" name="say" type="text" value="" size="80" onkeydown="keyin(event)" /> <!-- 按 enter 時呼叫 keyin() 回答 --> 
   <input type="submit" value="送出" onclick="say()" id="clear"/> <!-- 當送出按鈕按下，就呼叫 say() 函數回答 --> 
  </div>
  <BR/>
  <div id="dialogBox" style="width:800px; height:500px; overflow:auto; border:#090909 5px solid;position: relative;left: 30%;">

<div><img src='image/16.jpg'/><p id='ty' style="font-size: 20px;"> Hi!請告訴我你/妳的問題(景點推薦&旅程問題&金流問題&其他問題)</p></div> 
  <span id="msg"></span>
  </div>
  
  <script type="text/javascript">  
/* 以下為本程式回答問題時使用的 Q&A 規則，例如對於以下 Q&A 規則物件

 { Q:"想 | 希望", A:"為何想*呢?|真的想*?|那就去做阿?為何不呢?"},

代表的是，當您輸入的字串中有「想」或「希望」這樣的詞彙時，
程式就會從 A: 欄位中的回答裏隨機選出一個來回答。

回答語句中的 * 代表比對詞彙之後的字串，舉例而言、假如您說：

    我想去巴黎

那麼我們的程式從這四個可能的規則中隨機挑出一個來產生答案，產生的答案可能是：

為何想去巴黎呢?
真的想去巴黎?
那就去做阿?
為何不呢?

Eliza 就是一個這麼簡單的程式而已。*/
// Q&A 陣列宣告
var qaList = [
{ Q:"謝謝", A:"不客氣!"},
{ Q:"對不起 | 抱歉 | 不好意思", A:"別說抱歉 !|別客氣，儘管說 !"},
{ Q:"可否 | 可不可以", A:"你確定想*?"},
{ Q:"我想", A:"你為何想*?"},
{ Q:"我要", A:"你為何要*?"},
{ Q:"你是", A:"你認為我是*?"},
{ Q:"認為 | 以為", A:"為何說*?"},
{ Q:"感覺", A:"常有這種感覺嗎?"},
{ Q:"為何不", A:"你希望我*!"},
{ Q:"是否", A:"為何想知道是否*?"},
{ Q:"不能", A:"為何不能*?|你試過了嗎?|或許你現在能*了呢?"},
{ Q:"我是", A:"你好，久仰久仰!"},
{ Q:"甚麼 | 什麼 | 何時 | 誰 | 哪裡 | 如何 | 為何 | 因何", A:"為何這樣問?|為何你對這問題有興趣?|你認為答案是甚麼呢?|你認為如何呢?|你常問這類問題嗎?|這真的是你想知道的嗎?|為何不問問別人?|你曾有過類似的問題嗎?|你問這問題的原因是甚麼呢?"},
{ Q:"原因", A:"這是真正的原因嗎?|還有其他原因嗎?"}, 
{ Q:"理由", A:"這說明了甚麼呢?|還有其他理由嗎?"},
{ Q:"你好 | 嗨 | 您好", A:"你好，有甚麼問題嗎?"},
{ Q:"或許", A:"你好像不太確定?"},
{ Q:"不曉得 | 不知道", A:"為何不知道?|在想想看，有沒有甚麼可能性?"},
{ Q:"不想 | 不希望", A:"有沒有甚麼辦法呢?|為何不想*呢?|那你希望怎樣呢?"}, 
{ Q:"想 | 希望", A:"為何想*呢?|真的想*?|那就去做阿?為何不呢?"},
{ Q:"不", A:"為何不*?|所以你不*?"},
{ Q:"請", A:"我該如何*呢?|你想要我*嗎?"},
{ Q:"你", A:"你真的是在說我嗎?|別說我了，談談你吧!|為何這麼關心我*?|不要再說我了，談談你吧!|你自己*"},
{ Q:"總是 | 常常", A:"能不能具體說明呢?|何時?"},
{ Q:"像", A:"有多像?|哪裡像?"},
{ Q:"對", A:"你確定嗎?|我了解!"},
{ Q:"朋友", A:"多告訴我一些有關他的事吧!|你認識他多久了呢?"},
{ Q:"電腦", A:"你說的電腦是指我嗎?"}, 
{ Q:"難過", A:"別想它了|別難過|別想那麼多了|事情總是會解決的"},
{ Q:"高興", A:"不錯ㄚ|太棒了|這樣很好ㄚ"},
{ Q: "景點|出去玩", A: "想去北部、中部、南部、東部呢?" },
{ Q: "北部", A: "這是北部旅遊連結<br><p id='tyu'><a href='http://localhost:8081/jotravel/front/productPage?key=%E5%8C%97%E9%83%A8'>http://localhost:8081/jotravel/front/productPage?key=%E5%8C%97%E9%83%A8</a>"},
{ Q: "中部", A: "這是中部旅遊連結<p id='tyu'><a href='http://localhost:8333/Nice_eCommerce/FrontPageSearchBySubCategory?name=%E4%BC%91%E9%96%92%E9%9E%8B'>http://localhost:8333/Nice_eCommerce/FrontPageSearchBySubCategory?name=%E4%BC%91%E9%96%92%E9%9E%8B</a>"},
{ Q: "東部", A: "這是東部旅遊連結<p id='tyu'><a href='http://localhost:8333/Nice_eCommerce/FrontPageSearchBySubCategory?name=%E4%BC%91%E9%96%92%E9%9E%8B'>http://localhost:8333/Nice_eCommerce/FrontPageSearchBySubCategory?name=%E4%BC%91%E9%96%92%E9%9E%8B</a>"},

{ Q: "墾丁", A: "商品滿額優惠&周年慶&母親節活動"},
{ Q: "商品滿額優惠", A: "所有商品只要滿2000就送200優惠卷"},
{ Q: "周年慶", A: "滿10000現折1000"},
{ Q: "母親節活動", A: "服飾類商品85折"},

{ Q: "商品運送", A: "全站商品滿3000免運，可提供宅配" },

{ Q: "付款方式", A: "我們提供線上刷卡&匯款服務&貨到付款" },

{ Q: "商品退貨", A: "分為一般退貨&優惠券活動商品退貨&退貨條件" },
{ Q: "一般退貨", A: "對於在阿迪達斯官方購物網站所購買的商品，您可以在收到商品(以物流單據上的簽收日期為準)次日起的7天商品鑑賞期內申請一般退貨，尚無提供換貨服務。一般退貨條件適用於台灣阿迪達斯官方購物網站，包含一般商品、特價及促銷商品，但不包含使用優惠券訂單，優惠券退貨規則請參考「2. 優惠券活動商品退貨」。*請注意，您所申請的退貨，需符合以下所述的「3. 退貨條件」。" },
{ Q: "優惠券活動商品退貨", A: "對於在阿迪達斯官方購物網站所購買的商品，若您於結帳時使用優惠券折扣代碼，該筆訂單僅能接受整筆訂單退貨。意即同筆訂單內，即使該商品未享有優惠券折扣，仍無法分別退貨。*請注意，您所申請的退貨，需符合以下所述的「3. 退貨條件」。" },
{ Q: "退貨條件", A: "商品在7天鑑賞期內。依消保法規定，7天鑑賞期指收到商品(以物流單據上的簽收日期為準)次日起的7天內，並包含例假日。第7天為假日時，末日順延至次日。商品保持完好、未經使用、洗滌或修改、無沾染污漬或化妝品等痕跡，且不影響二次銷售。商品的外包裝完好無損（包括外包裝箱或外包裝袋，請不要直接在我們的鞋盒上面黏貼膠帶，請在鞋盒外加盒子和袋子），商品附件、說明書、吊牌、標識、標籤等齊全。*提醒您，鞋類商品的鞋盒也屬於商品，退貨時，鞋盒與鞋子需一併退回。如您所購買的商品有附加的贈品，請將贈品一併退回，贈品等同於一般商品，請保持贈品的品質與完整性。*提醒您，若贈品不能退回，恕無法接受退貨。" },

{ Q: "會員相關", A: "會員相關權益&如何成為會員?" },
{ Q: "會員相關權益", A: "會員生日月享7折&每次結帳享95折優惠" },
{ Q: "如何成為會員", A: "單筆消費滿3000獲年度消費滿10000" },
{ Q:"", A:"我了解|我能理解|還有問題嗎 ?|請繼續說下去|可以說的更詳細一點嗎?|這樣喔! 我知道!|然後呢? 發生甚麼事?|再來呢? 可以多說一些嗎|接下來呢? |可以多告訴我一些嗎?|多談談有關你的事，好嗎?|想多聊一聊嗎|可否多告訴我一些呢?"}
];  
  
    function random(n) { // 從 0 到 n-1 中選一個亂數
      return Math.floor(Math.random()*n);
    }
    
//     function clear(){
//     	document.getElementById("say").text("")
//     }

// 	clear();
//     function clear(){
//     setTimeout(function() {
//     	  document.getElementById("dialogBox").innerHtml=">>123 Hola，mi amigo （amiga） 有甚麼我可以幫你/妳? 請告訴我你/妳的問題(產品問題&優惠活動&商品運送付款方式&商品退貨&會員相關)";
//     	}, 3000);
//     }

	$(function(){
		
		t1 = setInterval("showAuto1()",130000);
		t = setInterval("showAuto()",120000);
		
	})
	
	function showAuto(){
	
		$("#msg").text("親，如果其他問題對話將在10秒後結束");
	} 
	
	
	function showAuto1(){
	
		$("#msg").text("對話已結束");
	} 
	
    function say() { // 當送出鍵按下時，會呼叫這個函數進行回答動作
      append("<br><div><img src='image/20.jpg'><p id='ty' style='color:#0800ff'>"+document.getElementById("say").value+"</p></div>"); // 先將使用者輸入的問句放到「對話區」顯示。
      answer(); // 然後回答使用者的問題。
    }
    
    function keyin(event) { // 當按下 enter 鍵時，會呼叫此函數進行回答
      var keyCode = event.which; // 取出按下的鍵
      if (keyCode == 13) say(); // 如果是換行字元 \n ，就進行回答動作。
    }
    
    function append(line) { // 將 line 放到「對話區」顯示。
      var dialogBox = document.getElementById("dialogBox"); // 取出對話框 
      dialogBox.innerHTML += line+"<BR/>\n"; // 加入 line 這行文字，並加入換行 <BR/>\n
      dialogBox.scrollTop = dialogBox.scrollHeight; // 捲動到最下方。
    }

    function answer() { // 回答問題
      setTimeout(function () { // 停頓 1 到 3 秒再回答問題 (因為若回答太快就不像人了，人打字需要時間)
        append("<div><img src='image/16.jpg'><p id='ty'>"+getAnswer()+"</p></div>");
      }, 1000+random(1000));
    }
    
    
    function getAnswer() {
      var say = document.getElementById("say").value; // 取得使用者輸入的問句。
      for (var i in qaList) { // 對於每一個 QA 
       try {
        var qa = qaList[i];
        var qList = qa.Q.split("|"); // 取出 Q 部分，分割成一個一個的問題字串 q
        var aList = qa.A.split("|"); // 取出回答 A 部分，分割成一個一個的回答字串 q
        for (var qi in qList) { // 對於每個問題字串 q
          var q = qList[qi];
          if (q=="") // 如果是最後一個「空字串」的話，那就不用比對，直接任選一個回答。
            return aList[random(aList.length)]; // 那就從答案中任選一個回答
          var r = new RegExp("(.*)"+q+"([^?.;]*)", "gi"); // 建立正規表達式 (.*) q ([^?.;]*)
          if (say.match(r)) { // 比對成功的話
            tail = RegExp.$2; // 就取出句尾
            // 將問句句尾的「我」改成「你」，「你」改成「我」。
            tail = tail.replace("我", "#").replace("你", "我").replace("#", "你");
            return aList[random(aList.length)].replace(/\*/, tail); // 然後將 * 改為句尾進行回答
          }
        }
       } catch (err) {}
      }
      return "我不太明白你的意思"; // 如果發生任何錯誤，就回答「然後呢？」來混過去。
    }
    
    $("#clear").click(function(){
    	
    	
    	
    	$("#say").val("");
    	
    })
  </script>
  <!-- 插入頁腳 -->
	

	<script src="${contextRoot}/resources/frontstage/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="${contextRoot}/resources/frontstage/js/vendor/bootstrap.min.js"></script>
	<script src="${contextRoot}/resources/frontstage/js/jquery.ajaxchimp.min.js"></script>
	<script src="${contextRoot}/resources/frontstage/js/jquery.nice-select.min.js"></script>
	<script src="${contextRoot}/resources/frontstage/js/jquery.sticky.js"></script>
	<script src="${contextRoot}/resources/frontstage/js/nouislider.min.js"></script>
	<script src="${contextRoot}/resources/frontstage/js/countdown.js"></script>
	<script src="${contextRoot}/resources/frontstage/js/jquery.magnific-popup.min.js"></script>
	<script src="${contextRoot}/resources/frontstage/js/owl.carousel.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="${contextRoot}/resources/frontstage/js/gmaps.min.js"></script>
	<script src="${contextRoot}/resources/frontstage/js/main.js"></script>
	
	/FinalProject/src/main/webapp/WEB-INF/jsp/front/JoTravelFront
</body>
</html>
<jsp:include page="../front/JoTravelFront/frontLayout/frontFooter.jsp" />