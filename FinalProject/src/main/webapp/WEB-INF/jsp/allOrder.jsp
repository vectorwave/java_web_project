<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>

<div id="app" style="color:black">

	<div class="row justify-content-center mt-4">


		<div class="h3 d-inline-block mt-2 d-flex justify-content-between">
			<strong>訂單編號</strong><strong> 金流</strong> <strong>狀態</strong><strong>總價</strong><strong></strong><strong></strong><strong></strong>
		</div>
		<div class="col-md-15">
			<div id="accordionExample" v-for="(order,index) in orders"
				:key="order.orderId">
				<div class="card card-bottom">
					<div class="card-header fs-2 d-flex justify-content-between"
						:id="'heading-'+index">
						<strong>{{order.orderId}}</strong><strong>{{order.cashFlow}}</strong><strong>{{order.status}}</strong><strong>{{getTotalPrice(index)}}</strong>
						<div>
							<button class="btn btn-primary btn-sm" type="button"
								data-toggle="collapse" :data-target="'#collapse-'+index">
								顯示訂單細節</button>
							<button type="button" @click="delOrder(index)"
								class="btn btn-danger btn-xs" data-toggle="modal"
								data-target="#purchaseModal">🗑️</button>
						</div>
					</div>
				</div>
				<div :id="'collapse-'+index" class="collapse show "
					:aria-labelledby="'heading-'+index" data-parent="#accordionExample">
					<table class="table table-sm">
						<thead>
							<tr>
								<th width="20"></th>
								<th width="100"></th>
								<th>商品名稱</th>
								<th>數量</th>
								<th>價格</th>
								<th>日期</th>
								<th>天數</th>
								<th class="text-center" width="120">小計</th>
							</tr>
						</thead>
						<tbody v-for="(detail,cindex) in order.orderDetails">
							<tr>
								<td class="align-middle"><button type="button"
										@click="delDetail(index,cindex)" class="btn btn-danger btn-sm"
										data-toggle="modal" data-target="#purchaseModal">🗑️</button>
								<td class="align-middle">
									<div class="card p-1 card-bottom">
										<img
											:src="'${contextRoot}/back/product/photo/'+detail.product.productId"
											alt="..." width="80px;">
									</div>
								</td>
								<td class="align-middle ">{{detail.product.productName}}</td>
								<td class="align-middle">{{detail.amount}}</td>
								<td class="align-middle">{{detail.product.productPrice}}</td>
								<td class="align-middle">{{detail.date}}</td>
								<td class="align-middle ">{{detail.totalDays}}</td>
								<td class="align-middle text-right">{{detail.product.productPrice*detail.amount}}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<br />
			</div>
		</div>
	</div>
	<div class="modal fade" id="purchaseModal" tabindex="-1" role="dialog"
		aria-labelledby="purchaseLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<h2>確定刪除?</h2>
				</div>
				<div class="modal-footer">
					<button type="button" @click="delModal()" class="btn btn-danger"
						data-dismiss="modal">是</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">否</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>

var delUrl = "${contextRoot}/order/delete?orderId=";
var index = null;
var cindex = null;
var vm = new Vue({
  el:'#app',
  data:{orders:null},
  methods:{
	  delModal(){
		 if(cindex == null){
			 let o = this.orders;
			 del(''+o[index].orderId);
			 o.splice(index,1);
		 }else{
			 let o = this.orders;
			 let d = o[index].orderDetails;
			 del(''+o[index].orderId+'&productId='+d[cindex].product.productId);
		 	d.splice(cindex,1);
		 }
		 index = null;
		 cindex = null;
	  },
	  delOrder(i){
		 index = i;
	  },
	  delDetail(i,c){
		  index = i;
		 cindex = c;
	  },
	  getTotalPrice(index){
		  var total = 0;
		  this.orders[index].orderDetails.forEach(function(detail){
			  total += detail.product.productPrice*detail.amount;
		  });
		  return total;
	  },
  },
});
jQuery.ajax({
	url:'${contextRoot}/order/all',
  async :false, 
	success:function(res){
		if(res.length == 0){
			$('#app').html('<img class="mb-4 rounded mx-auto d-block" src="${contextRoot}/assets/img/noOrder.png" alt="" width="700" height="700">');			
		}
		vm.$data.orders = res;
	},
	error:function(err){
		console.log(err);
	}
});

function del(id){
	jQuery.ajax({
		url:delUrl+id,
	  async :false, 
	  type:'DELETE',
		error:function(err){
			console.log(err);
		}
	});
}


</script>
<jsp:include page="layout/footer.jsp" />