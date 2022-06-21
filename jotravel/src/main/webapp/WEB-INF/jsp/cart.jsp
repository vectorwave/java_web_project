<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vue購物車</title>
 <script src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.js"></script>
 <script src="${contextRoot}/js/vue.min.js"></script>
<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
<script src="${contextRoot}/js/js.cookie.min.js"></script>
    <link rel="stylesheet" href="${contextRoot}/css/style.css">
    
</head>
<body>
    <div id="app">
        <div class="container">
            <div class="item_header">
                <div class="item_detail">商品</div>
                <div class="price">單價</div>
                <div class="count">數量</div> 
                <div class="amount">總計</div>
                <div class="operate">操作</div>
            </div>
            <div class="item_container" v-for="(item, index) in details"  >
                    <div class="item_header item_body">
                            <div class="item_detail">
                                <img :src="'http://localhost:8081/jotravel/image/'+item.product.productPic" alt="">
                                
                                <div class="name">{{item.product.name}}</div>                 
                            </div>
                            
                            <div class="price"><span>$</span>{{item.product.price}}</div>
                            <p>{{item.amount}}</p>
                            <div class="count">
                            
                                <button @click="handleSub(item)">-</button>
                                <button @click="handlePlus(item)">+</button>
                            </div>
                    
                            <input type="date" v-model="item.date"> 
                            <div class="amount">{{item.product.price * item.amount}}</div>
                            <div class="operate">
                                <button @click="handledelete(index)">刪除</button>
                            </div>
                    </div>
            </div>
<input v-model="status" placeholder="edit me" />

<div>Picked: {{ cashFlow }}</div>
<input type="text" v-model="orderId"/>

<input type="radio" id="one" value="One" v-model="cashFlow" />
<label for="one">One</label>

<input type="radio" id="two" value="Two" v-model="cashFlow" />
<label for="two">Two</label>

<p>{{$data.details}}</p>

<button @click="cookie()">測試</button>
        </div>
    </div>
</body>
<script src="${contextRoot}/js/cart.js"></script>
</html>