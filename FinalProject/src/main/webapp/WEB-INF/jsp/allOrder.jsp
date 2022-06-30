<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>
<div id="app" style="color: black">
	<div class="row justify-content-center mt-4">
		<div class="h3 d-inline-block mt-2 d-flex row">
			<div class="col-sm text-center">訂單編號</div>
			<div class="col-sm text-center">金流</div>
			<div class="col-sm text-center">狀態</div>
			<div class="col-sm text-center">總價</div>
			<div class="col-sm"></div>
		</div>
		<div class="col-md-15">
			<div id="accordionExample" v-for="(order,index) in orders"
				:key="order.orderId">
				<div class="card card-bottom">
					<div class="card-header fs-2 d-flex row" :id="'heading-'+index">
						<div class="col-sm text-center">{{order.orderId}}</div>
						<div class="col-sm text-center">{{order.cashFlow}}</div>
						<div class="col-sm text-center">{{order.status}}</div>
						<div class="col-sm text-center">{{getTotalPrice(index)}}</div>
						<div class="col-sm">
							<button class="btn btn-primary btn-sm" type="button"
								data-toggle="collapse" :data-target="'#collapse-'+index">
								顯示訂單細節</button>
							<button type="button" @click="delOrder(index);delModal()"
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
								<th width="60"></th>
								<th>商品名稱</th>
								<th>價格</th>
								<th>數量</th>
								<th>日期</th>
								<th>天數</th>
								<th>小計</th>
							</tr>
						</thead>
						<tbody v-for="(detail,cindex) in order.orderDetails">
							<tr>
								<td class="align-middle"><button type="button"
										@click="delDetail(index,cindex);delModal()"
										class="btn btn-danger btn-sm" data-toggle="modal"
										data-target="#purchaseModal">🗑️</button>
								<td class="align-middle"><img
									:src="'${contextRoot}/back/product/photo/'+detail.product.productId"
									alt="..." width="80px;"></td>
								<td class="align-middle ">{{detail.product.productName}}</td>
								<td class="align-middle">{{detail.product.productPrice}}</td>
								<td class="align-middle">{{detail.amount}}</td>
								<td class="align-middle">{{detail.date}}</td>
								<td class="align-middle ">{{detail.totalDays}}</td>
								<td class="align-middle">{{detail.product.productPrice*detail.amount}}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<br />
			</div>
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li :class="{'disabled':nowPage == 1}"><a class="page-link" type="button"
						aria-label="Previous" @click="changePage(nowPage-1)"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li v-for="n in totalPages" :class="{'active':nowPage == n}"><a
						class="page-link" type="button" @click="changePage(n)">{{n}}</a></li>
					<li :class="{'disabled':nowPage == totalPages}"><a class="page-link" type="button" aria-label="Next"> <span
							aria-hidden="true" @click="changePage(nowPage+1)">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>

	</div>
</div>
<script>

var delUrl = "${contextRoot}/order/delete?orderId=";
var index = null;
var cindex = null;
var vm = new Vue({
  el:'#app',
  data:{orders:null,totalPages:null,nowPage:1},
  methods:{
	  delModal(){
		  Swal.fire({
		  title: '確認刪除嗎?',
		  icon: 'question',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes!',
		}).then(result=>{
			if(result.isConfirmed){
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
			Swal.fire('刪除成功!', '', 'success');
		}})
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
		if(res.orders.length == 0){
			$('#app').html('<img class="mb-4 rounded mx-auto d-block" src="${contextRoot}/assets/img/noOrder.png" alt="" width="700" height="700">');			
		}
		vm.$data.orders = res.orders;
		vm.$data.totalPages = res.totalPages;
	},
	error:function(err){
		console.log(err);
	}
});
function changePage(page){
	jQuery.ajax({
		url:'${contextRoot}/order/all/'+page,
		async:false,
		type:'GET',
		success:res=>{
			vm.$data.orders = res;
			vm.$data.nowPage = page;
		},
		error:err=>{
			console.log(err);
		}
	});
}
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