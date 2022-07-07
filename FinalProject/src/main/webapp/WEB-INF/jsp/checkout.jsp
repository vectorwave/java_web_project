<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOTRAVEL 訂單頁面</title>
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
<link rel="stylesheet"
	href="<c:url value="/css/blog/font-awesome.min.css"/>">
<!-- main css -->
<link rel="stylesheet" href="<c:url value="/css/blog/style.css"/>">
<link rel="stylesheet" href="<c:url value="/css/blog/responsive.css"/>">
<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
<script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
<script src="${contextRoot}/js/js.cookie.min.js"></script>
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>
</head>
<body style="background-color:#FFF8D7">
	
	<jsp:include page="front/JoTravelFront/frontLayout/frontHeader.jsp" />
	<h1> <br><br> </h1>
	<div class="container " id="container">
		<div class="h1 text-center">
			<strong>JOTRAVEL 訂單頁面</strong>
		</div>
		<div class="row mt-3">
			<div class="col-12 col-md">
				<div id="alert1"
					class="alert alert-success alert-rounded text-center" role="alert"><h2>1.檢查購物車資料</h2></div>
			</div>
			<div class="col-12 col-md">
				<div id="alert2" class="alert alert-light alert-rounded text-center"
					role="alert"><h2>2.填寫付款資料</h2></div>
			</div>
			<div class="col-12 col-md">
				<div id="alert3" class="alert alert-light alert-rounded text-center"
					role="alert"><h2>3.完成交易</h2></div>
			</div>
		</div>
		<div class="row justify-content-center ">
			<div class="col-md-10 tab-content">
				<div id="cartpage" class="accordion tab-pane fade show active">
					<div>
						<table class="table table-sm">
							<thead>
								<tr style="font-size:23px">
									<th width="20"></th>
									<th width="60"></th>
									<th>商品名稱</th>
									<th>價格</th>
									<th>數量</th>
									<th>日期</th>
									<th>天數</th>
									<th>小計</th>
								</tr>
							</thead>
							<tbody v-for="(detail,index) in orderDetails">
								<tr>
									<td class="align-middle mr-2"><button type="button" @click="delDetail(index)"
											class="genric-btn danger circle px-3" data-toggle="modal">🗑️</button>
									<td class="align-middle"><img
										:src="'${contextRoot}/back/product/photo/'+detail.product.productId"
										alt="..." width="80px;"></td>
									<td class="align-middle ">{{detail.product.productName}}</td>
									<td class="align-middle">{{detail.product.productPrice}}</td>
									<td class="align-middle"><input type="number" style="width:80px" min="1" v-model="detail.amount"/></td>
									<td class="align-middle"><input type="date" v-model="detail.date"></td>
									<td class="align-middle "><input type="number" style="width:80px" min="1" v-model="detail.totalDays"/></td>
									<td class="align-middle">{{detail.product.productPrice*detail.amount}}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="mt-3 d-flex justify-content-end h3">合計:{{getTotalPrice()}}</div>
					<div class="mt-3 d-flex justify-content-end">
						<div><button type="button" class="btn btn-primary btn-sm" data-toggle="tab"
							data-target="#paypage" onclick="changeColor()">前往付款頁面</button></div>
					</div>
				</div>
				<div id="paypage" class=" text-center border-0 tab-pane">
					<div class="form-row text-left ">
						<div class="form-group col-md-6">
							<label for="name">姓名</label> <input type="text"
								class="form-control " id="name" placeholder="姓名" required>
							<div class="invalid-feedback">請填寫姓名</div>
						</div>
						<div class="form-group col-md-6">
							<label for="mail">Email</label> <input type="email"
								class="form-control" id="mail" placeholder="Email" required>
							<div class="invalid-feedback">請填寫Email</div>
						</div>
					</div>
					<div class="form-row text-left">
						<div class="form-group col-md-4">
							<label for="section">國家</label> <select name="" id="section"
								class="form-control">
								<option value="台灣">台灣</option>
								<option value="">...</option>
							</select>
						</div>
						<div class="form-group col-md-4">
							<label for="postal-code">身分證字號</label> <input type="text"
								class="form-control" id="id-number" placeholder="" required>
						</div>
						<div class="form-group col-md-4">
							<label for="postal-code">郵遞區號</label> <input type="text"
								class="form-control" id="postal-code" placeholder="" required>
						</div>
					</div>
					<div class="form-row">
						<label for="address">地址</label> <input type="text"
							class="form-control" id="address" required>
					</div>
					<div class="form-row">
						<label for="cashFlow">付款方式</label> <select name="" id="cashFlow"
							class="form-control" v-model="cashFlow">
							<option value="WebATM">WebATM</option>
							<option value="ATM">自動櫃員機</option>
							<option value="Credit">信用卡及銀聯卡</option>
							<option value="CVS">超商代碼</option>
							<option value="BARCODE">超商條碼</option>
							<option value="ApplePay">Apple 手機支付</option>
						</select>
					</div>
					<div class="mt-3 d-flex justify-content-end">
						<button type="button" class="btn btn-primary mr-2"
							onclick="autoInput()">一鍵輸入</button>
						<button type="button" class="btn btn-primary" onclick="sent()">確認付款</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br/>
	<script>
	function autoInput(){
		$('#section').val('台灣')
		$('#id-number').val('Y10000001');
		$('#name').val('張君雅');
		$('#cashFlow').val('Credit');
		$('#mail').val('iservice@ispan.com.tw');
		$('#postal-code').val(106);
		$('#address').val('台北市大安區復興南路一段390號2樓');
	}
	function changeColor(){
		$('#alert1').removeClass('alert-success');
		$('#alert1').addClass('alert-light');
		$('#alert2').removeClass('alert-light');
		$('#alert2').addClass('alert-success');
	}
	//購物車cookie格式  商品編號,訂購數量,日期,天數;商品編號,訂購數量,日期
	if(!Cookies.get('cart')){
		Cookies.set('cart','',{ expires: 365 });		
	}
	if(Cookies.get('cart') == ''){
		$('#container').html('<img class="mb-4 rounded mx-auto d-block" src="${contextRoot}/assets/img/noCart.png" alt="" width="600" height="500">');
	}
	function cookieToData(){
		if(!Cookies.get('cart') || Cookies.get('cart')==''){
			return [];
		}
		let arr1 = Cookies.get('cart').slice(0,-1).split(';');
		let details = [];
		arr1.forEach(arr=>{
			let arr2 = arr.split(',');
			details.push({
				product:getProductImf(arr2[0]),
				amount:arr2[1],
				date:arr2[2],
				totalDays:arr2[3],
			});
		});
		return details;
	}
	function dataToCookie(){
		let cookie = "";
		vm.orderDetails.forEach(detail=>{
			cookie += detail.product.productId+','+detail.amount+','+detail.date+','+detail.totalDays+';';
		});
		return cookie;
	}
	//建立vue vm
	var vm = new Vue({
		  el:'#container',
		  data:{
			  status:'處理中',
			  cashFlow:'Credit',
			  orderDetails:cookieToData(),
		},
		  methods:{
			  getTotalPrice(){
				  var total = 0;
				  this.orderDetails.forEach(function(detail){
					  total += detail.product.productPrice*detail.amount;
				  });
				  return total;
			  },
			  delDetail(index){
				  this.orderDetails.splice(index,1);
				  let cookie = Cookies.get('cart').split(';');
				  cookie.splice(index,1);
				  Cookies.set('cart',cookie.join(';'));
			  }
		  },
		});
	//將訂單送往綠界金流
	let flag = true;
	function sent(){
		jQuery.ajax({
			url:'${contextRoot}/ECPay/go',
			method:'POST',
		  	contentType:'application/json; charset=utf-8',
		  	data:JSON.stringify(vm.$data),
			success:function(res){
				flag = false;
				$('#container').html(res);
			},
			error:function(err){
				console.log(err);
			}
		});
	}
	function getProductImf(id){
		let product = null;
		jQuery.ajax({
			url:'${contextRoot}/back/product/'+id,
			method:'GET',
			async:false,
			contentType:'application/json; charset=utf-8',
			success:res=>{
				product = res;
			},
			error:err=>{
				console.log(err);
			}
		});
		return product;
	};
	
	$(window).on('beforeunload',function(){
		if(flag && vm.$data.orderDetails.length!=0){
			Cookies.set('cart',dataToCookie(),{ expires: 365 });
		}else{
			Cookies.set('cart','',{ expires: 365 });
		}
	});
	</script>
</body>
</html>

 <jsp:include page="front/JoTravelFront/frontLayout/frontFooter.jsp" />