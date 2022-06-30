<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOTRAVEL 訂單頁面</title>
<link rel="stylesheet" href="${contextRoot}/css/bootstrap.min.css" />
<link rel="stylesheet" href="${contextRoot}/css/all.min.css" />
<script src="${contextRoot}/js/jquery-3.6.0.min.js"></script>
<script src="${contextRoot}/js/bootstrap.bundle.min.js"></script>
<script src="${contextRoot}/js/js.cookie.min.js"></script>
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>
</head>
<body>
	<div class="container mt-5">
		<div class="h1 text-center">
			<strong>JOTRAVEL 訂單頁面</strong>
		</div>
		<div class="row mt-3">
			<div class="col-12 col-md">
				<div id="alert1" class="alert alert-success alert-rounded text-center"
					role="alert">1.檢查購物車資料</div>
			</div>
			<div class="col-12 col-md">
				<div id="alert2"  class="alert alert-light alert-rounded text-center"
					role="alert">2.填寫付款資料</div>
			</div>
			<div  class="col-12 col-md">
				<div id="alert3" class="alert alert-light alert-rounded text-center"
					role="alert">3.完成交易</div>
			</div>
		</div>
		<div class="row justify-content-center mt-4">
			<div class="col-md-10 tab-content">
				<div id="cartpage" class="accordion tab-pane fade show active">
					<div>
						<table class="table table-sm">
							<thead>
								<tr>
									<th width="20"></th>
									<th width="100"></th>
									<th>商品名稱</th>
									<th>數量</th>
									<th class="text-center" width="120">小計</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="align-middle"><a href="#removeModal"
										class="text-dark" data-price="999" data-title="一級偽裝帽"
										data-toggle="modal" data-target="#removeModal" style="text-decoration:none">🗑️</a></td>
									<td class="align-middle">
										<div class="card p-1 card-bottom">
											<img
												src="https://images.unsplash.com/photo-1447005497901-b3e9ee359928?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"
												alt="..." width="80px;">
										</div>
									</td>
									<td class="align-middle ">一級偽裝帽</td>
									<td class="align-middle">1件</td>
									<td class="align-middle text-right">$999</td>
								</tr>
								<tr class="text-right">
									<td colspan="4"><strong>合計</strong></td>
									<td><strong>$ 1059</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="mt-3 d-flex justify-content-end">
							<button type="button" class="btn btn-primary" data-toggle="tab" data-target="#paypage" onclick="changeColor()">前往付款頁面</button>
						</div>
				</div>
				<div id="paypage" class=" text-center border-0 tab-pane">
					 <div class="form-row text-left mt-3">
                            <div class="form-group col-md-6">
                                <label for="name">姓名</label>
                                <input type="text" class="form-control " id="name" placeholder="姓名" required>
                                <div class="invalid-feedback">請填寫姓名</div>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="mail">Email</label>
                                <input type="email" class="form-control" id="mail" placeholder="Email" required>
                                <div class="invalid-feedback">請填寫Email</div>
                            </div>
                        </div>
                        <div class="form-row text-left">
                            <div class="form-group col-md-4">
                                <label for="section">國家</label>
                                <select name="" id="section" class="form-control">
                                    <option value="台灣">台灣</option>
                                    <option value="">...</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="postal-code">身分證字號</label>
                                <input type="text" class="form-control" id="id-number" placeholder="" required>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="postal-code">郵遞區號</label>
                                <input type="text" class="form-control" id="postal-code" placeholder="" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <label for="address">地址</label>
                            <input type="text" class="form-control" id="address" required>
                        </div>
                         <div class="form-row">
                            <label for="cashFlow">付款方式</label>
                            <select name="" id="cashFlow" class="form-control">
                                    <option value="LINE Pay">LINE Pay</option>
                                    <option value="信用卡">信用卡/簽帳金融卡</option>
                                    <option value="國民旅遊卡">國民旅遊卡</option>
                                    <option value="街口支付">街口支付</option>
                                </select>
                        </div>
						<div class="mt-3 d-flex justify-content-end">
							<button type="button" class="btn btn-primary mr-2" onclick="autoInput()">一鍵輸入</button>
							<button type="button" class="btn btn-primary">確認付款</button>
						</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	function autoInput(){
		$('#section').val('台灣')
		$('#id-number').val('Y10000001');
		$('#name').val('張君雅');
		$('#cashFlow').val('信用卡');
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
	window.onbeforeunload = e => {
		Cookies.set('cart',testcart,{sameSite:'none'});
	};
	var vm = new Vue({
		  el:'#app',
		  data:{orders:null},
		  methods:{
			  getTotalPrice(index){
				  var total = 0;
				  this.orders[index].orderDetails.forEach(function(detail){
					  total += detail.product.productPrice*detail.amount;
				  });
				  return total;
			  },
		  },
		});
	var testcart = '';
	if(Cookies.get('cart')==undefined){
		Cookies.set('cart',testcart,{sameSite:'none'});
	}else{
		console.log("你有購物車");
	};
	
	</script>
</body>
</html>