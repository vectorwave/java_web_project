<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<jsp:include page="../front/JoTravelFront/frontLayout/frontHeader.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
  <style>
   @import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);

html {
      font-family: "Montserrat", Arial, sans-serif;
      -ms-text-size-adjust: 100%;
      -webkit-text-size-adjust: 100%;
    }

    body {
      background: #f2f3eb;
    }

    button {
      overflow: visible;
    }

    button,
    select {
      text-transform: none;
    }

    button,
    input,
    select,
    textarea {
      color: #5a5a5a;
      font: inherit;
      margin: 0;
    }

    input {
      line-height: normal;
    }

    textarea {
      overflow: auto;
    }

    #container {
      border: solid 3px #474544;
      max-width: 768px;
      margin: 60px auto;
      position: relative;
    }

    form {
      padding: 37.5px;
      margin: 50px 0;
    }

    h1 {
      color: #474544;
      font-size: 32px;
      font-weight: 700;
      letter-spacing: 7px;
      text-align: center;
      text-transform: uppercase;
    }

    .underline {
      border-bottom: solid 2px #474544;
      margin: -0.512em auto;
      width: 80px;
    }

    .icon_wrapper {
      margin: 50px auto 0;
      width: 100%;
    }

    .icon {
      display: block;
      fill: #474544;
      height: 50px;
      margin: 0 auto;
      width: 50px;
    }

    .email {
      float: right;
      width: 45%;
    }
    .phone{
      float: right;
      width: 45%;
    }

    input[type="text"],
    [type="email"],
    select,
    textarea {
      background: none;
      border: none;
      border-bottom: solid 2px #474544;
      color: #474544;
      font-size: 1em;
      font-weight: 400;
      letter-spacing: 1px;
      margin: 0em 0 1.875em 0;
      padding: 0 0 0.875em 0;
      text-transform: uppercase;
      width: 100%;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      -ms-box-sizing: border-box;
      -o-box-sizing: border-box;
      box-sizing: border-box;
      -webkit-transition: all 0.3s;
      -moz-transition: all 0.3s;
      -ms-transition: all 0.3s;
      -o-transition: all 0.3s;
      transition: all 0.3s;
    }

    input[type="text"]:focus,
    [type="email"]:focus,
    textarea:focus {
      outline: none;
      padding: 0 0 0.875em 0;
    }

    .description {
      float: none;
    }

    .name {
      float: left;
      width: 45%;
    }

    select {
      background: url("https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-arrow-down-32.png")
        no-repeat right;
      outline: none;
      -moz-appearance: none;
      -webkit-appearance: none;
    }

    select::-ms-expand {
      display: none;
    }

    .subject {
      width: 100%;
    }

    .phone {
      width: 100%;
    }

    textarea {
      line-height: 150%;
      height: 150px;
      resize: none;
      width: 100%;
    }

    ::-webkit-input-placeholder {
      color: #474544;
    }

    :-moz-placeholder {
      color: #474544;
      opacity: 1;
    }

    ::-moz-placeholder {
      color: #474544;
      opacity: 1;
    }

    :-ms-input-placeholder {
      color: #474544;
    }

    #form_button {
      background: none;
      border: solid 2px #474544;
      color: #474544;
      cursor: pointer;
      display: inline-block;
      font-family: "Helvetica", Arial, sans-serif;
      font-size: 0.875em;
      font-weight: bold;
      outline: none;
      padding: 20px 35px;
      text-transform: uppercase;
      -webkit-transition: all 0.3s;
      -moz-transition: all 0.3s;
      -ms-transition: all 0.3s;
      -o-transition: all 0.3s;
      transition: all 0.3s;
    }
 #btnNewInOneClick {
      background: none;
      border: solid 2px #474544;
      color: #474544;
      cursor: pointer;
      display: inline-block;
      font-family: "Helvetica", Arial, sans-serif;
      font-size: 0.875em;
      font-weight: bold;
      outline: none;
      padding: 20px 35px;
      text-transform: uppercase;
      -webkit-transition: all 0.3s;
      -moz-transition: all 0.3s;
      -ms-transition: all 0.3s;
      -o-transition: all 0.3s;
      transition: all 0.3s;
    }
#btnClear {
      background: none;
      border: solid 2px #474544;
      color: #474544;
      cursor: pointer;
      display: inline-block;
      font-family: "Helvetica", Arial, sans-serif;
      font-size: 0.875em;
      font-weight: bold;
      outline: none;
      padding: 20px 35px;
      text-transform: uppercase;
      -webkit-transition: all 0.3s;
      -moz-transition: all 0.3s;
      -ms-transition: all 0.3s;
      -o-transition: all 0.3s;
      transition: all 0.3s;
    }
    #form_button:hover {
      background: #474544;
      color: #f2f3eb;
    }
 #btnNewInOneClick:hover {
      background: #474544;
      color: #f2f3eb;
    }
#btnClear:hover {
      background: #474544;
      color: #f2f3eb;
    }

    @media screen and (max-width: 768px) {
      #container {
        margin: 20px auto;
        width: 95%;
      }
    }

    @media screen and (max-width: 480px) {
      h1 {
        font-size: 26px;
      }

      .underline {
        width: 68px;
      }

      #form_button {
        padding: 15px 25px;
      }
      #btnNewInOneClick {
        padding: 15px 25px;
      }
      
       #btnClear {
        padding: 15px 25px;
      }
    }

    @media screen and (max-width: 420px) {
      h1 {
        font-size: 18px;
      }

      .icon {
        height: 35px;
        width: 35px;
      }

      .underline {
        width: 53px;
      }

      input[type="text"],
      [type="email"],
      select,
      textarea {
        font-size: 0.875em;
      }
    }
  </style>
  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta
    name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no"
  />
  <link rel="icon" href="image/favicon.png" type="image/png" />
  <title>Royal Hotel</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href='<c:url value="/css/blog/bootstrap.css"/>' />
  <link rel="stylesheet" href="
  <c:url value="/css/blog/vendors/linericon/style.css" />
  "> <link rel="stylesheet" href="
  <c:url value="/css/blog/font-awesome.min.css" />
  "> <link rel="stylesheet" href="
  <c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css" />
  "> <link rel="stylesheet" href="
  <c:url
    value="/css/blog/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css"
  />
  "> <link rel="stylesheet" href="
  <c:url value="/css/blog/vendors/nice-select/css/nice-select.css" />
  "> <link rel="stylesheet" href="
  <c:url value="/css/blog/vendors/owl-carousel/owl.carousel.min.css" />
  ">
  <!-- main css -->
  <link rel="stylesheet" href="
  <c:url value="/css/blog/style.css" />
  "> <link rel="stylesheet" href="
  <c:url value="/css/blog/responsive.css" />
  ">
</head>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<body>
<br><br><br>
<div id="container">
  <h1>&bull; 客服表單 &bull;</h1>
  <div class="underline">
  </div>
  <div class="icon_wrapper">
    <svg class="icon" viewBox="0 0 145.192 145.192">
      <path d="M126.82,32.694c-2.804,0-5.08,2.273-5.08,5.075v2.721c-1.462,0-2.646,1.185-2.646,2.647v1.995    c0,1.585,1.286,2.873,2.874,2.873h20.577c1.462,0,2.646-1.185,2.646-2.647v-3.041c0-1.009-0.816-1.825-1.823-1.825v-2.722    c0-2.802-2.276-5.075-5.079-5.075h-1.985v-3.829c0-3.816-3.095-6.912-6.913-6.912h-0.589h-20.45c0-2.67-2.164-4.835-4.833-4.835    H56.843c-2.67,0-4.835,2.165-4.835,4.835H34.356v-3.384h-9.563v3.384v1.178h-7.061v1.416c-2.67,0.27-10.17,1.424-13.882,5.972    c-1.773,2.17-2.44,4.791-1.983,7.793c0.463,3.043,1.271,6.346,2.128,9.841c2.354,9.616,5.024,20.515,0.549,28.077    C2.647,79.44-3.125,90.589,2.201,99.547c4.123,6.935,13.701,10.44,28.5,10.44c1.186,0,2.405-0.023,3.658-0.068v9.028h-0.296    c-2.516,0-4.558,2.039-4.558,4.558v4.566h100.04v-4.564c0-2.519-2.039-4.558-4.558-4.558h-0.297V84.631h0.297    c2.519,0,4.558-2.037,4.558-4.556v-0.009c0-2.516-2.039-4.556-4.556-4.556l-36.786-0.009V61.973c0-2.193-1.777-3.971-3.972-3.971    v-4.711h0.456c1.629,0,2.952-1.32,2.952-2.949h14.227V34.459h1.658c2.672,0,4.834-2.165,4.834-4.834h20.45v3.069H126.82z     M34.06,75.511c-2.518,0-4.558,2.04-4.558,4.556v0.009c0,2.519,2.042,4.556,4.558,4.556h0.296v24.12l-0.042-1.168    c-15.994,0.574-26.122-2.523-30.106-9.229C-0.464,90.5,4.822,80.347,6.55,77.423c4.964-8.382,2.173-19.774-0.29-29.825    c-0.843-3.442-1.639-6.696-2.088-9.638c-0.354-2.35,0.129-4.3,1.484-5.958c3.029-3.714,9.509-4.805,12.076-5.1v1.233h7.061v1.49    v2.684c-2.403,1.114-4.153,2.997-4.676,5.237H18.15c-0.584,0-1.056,0.474-1.056,1.056v0.83c0,0.584,0.475,1.056,1.056,1.056h1.984    c0.561,2.18,2.304,3.999,4.658,5.092v0.029c0,0-2.282,20.823,16.479,22.099v1.102c0,1.177,0.955,2.133,2.133,2.133h3.297    c1.178,0,2.133-0.956,2.133-2.133V50.135c0-1.177-0.955-2.132-2.133-2.132h-3.297c-1.178,0-2.133,0.955-2.133,2.132    c-1.575-0.235-5.532-1.17-6.635-4.547c2.36-1.092,4.109-2.913,4.669-5.097h1.308c0.722,0,1.309-0.584,1.309-1.308v-0.578    c0-0.584-0.475-1.056-1.056-1.056h-1.539c-0.542-2.332-2.416-4.271-4.968-5.363v-2.559h17.651c0,2.67,2.166,4.835,4.836,4.835 h2.392v15.88h13.639c0,1.629,1.321,2.949,2.951,2.949h0.899v4.711c-2.194,0-3.972,1.778-3.972,3.971v13.529L34.06,75.511z     M95.188,101.78c0,8.655-7.012,15.665-15.664,15.665c-8.653,0-15.667-7.01-15.667-15.665c0-8.647,7.014-15.664,15.667-15.664    C88.177,86.116,95.188,93.132,95.188,101.78z M97.189,45.669h-9.556c0-0.896-0.726-1.62-1.619-1.62H74.494    c-0.896,0-1.621,0.727-1.621,1.62h-8.967v-11.21h33.283V45.669z"></path>
      <path d="M70.865,101.78c0,4.774,3.886,8.657,8.66,8.657c4.774,0,8.657-3.883,8.657-8.657c0-4.773-3.883-8.656-8.657-8.656    C74.751,93.124,70.865,97.006,70.865,101.78z"></path>
    </svg>
  </div>
<form
  action="${contextRoot}/message/insert"
  method="GET"
  id="contact_form"
  modelAttribute="CustomerBean"
>
  <div class="name">
    <label for="name"></label>
    <input
      type="text"
      placeholder="請輸入你/妳的名字"
      name="name"
      id="name"
      pattern="[\u4e00-\u9fa5]{2,4}"
      oninvalid="validatelt(this,'真实姓名必须是中文，且长度不小于2，不大于4')"
      required
    />
  </div>
   <div class="email">
    <label for="inputPassword"></label>
    <input
      type="text"
      placeholder="請輸入你/妳的聯絡方式"
      value=""
      placeholder="請輸入10碼聯絡方式..."
      name="phone"
      id="phone"
      pattern="09\d{2}\-?\d{3}\-?\d{3}"
      required
    />
  </div>
   <div class="name">
    <label for="email"></label>
    <input
      type="text"
      placeholder="請輸入你/妳的電子郵件信箱"
      name="email"
      id="email"
      required
    />
  </div>
 <div class="email">
    <label for="inputPassword">請選擇方便連絡時段(必選):</label>
    上午&nbsp<input
            checked="true" class="pixel-radio btcolor" type="radio"
            id="black" name="preferedContactTime" value="上午">
          下午&nbsp<input class="pixel-radio btcolor" type="radio" id="black"
            name="preferedContactTime" value="下午">
  </div>

  <div class="subject">
    <label for="subject"></label>
    <select
      placeholder="請選擇你/妳遇到的問題(必選)"
      name="serviceInfo"
      value=""
      path="serviceInfo"
      id="serviceInfo"
      required
    >
      <option disabled hidden selected>請選擇你/妳遇到的問題(必選)</option>
      <option>"產品問題"</option>
      <option>"旅程問題"</option>
      <option>"交易及帳務相關"</option>
      <option>"客戶投訴"</option>
      <option>"會員相關"</option>
    </select>
  </div>
  <div class="description">
    <label for="description"></label>
    <textarea
      name="description"
      placeholder="請詳加描述您的問題..."
      id="description"
      path="description"
      cols="30"
      rows="5"
      required
    ></textarea>
  </div>
  



  <div class="submit">
    <input type="submit" value="送出表單" id="form_button" />
    <input type="submit" value="一鍵生成" id="btnNewInOneClick" />
    <input type="submit" value="一鍵清除" id="btnClear" />
  </div>
  
</form><!-- // End form -->
</div><!-- // End #container -->-->
</body>
<!-- 引入jquery -->
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"
></script>
<script>
  function SendMail() {
    $.ajax({
      url: "${contextRoot}/message/sendMail",
      type: "GET",
    });
  }

  $("#btnNewInOneClick").click(function () {
    $("#serviceInfo").val("旅程問題");
    $("#description").val("我會怕搭高鐵");
    $("#name").val("薛喜娛樂");
    $("#phone").val("0911222333");
    $("#email").val("shaxyenglish@gmail.com");
  });

  $("#btnClear").click(function () {
    $("#description").val("");
    $("#name").val("");
    $("#phone").val("");
    $("#email").val("");
  });
</script>

/FinalProject/src/main/webapp/WEB-INF/jsp/front/JoTravelFront

<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<jsp:include page="../front/JoTravelFront/frontLayout/frontFooter.jsp" />
