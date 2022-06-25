<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>

<div id="app" style="color:black">

<div class="row justify-content-center mt-4" >
            <div class="col-md-15">
                <div class="accordion" id="accordionExample" v-for="(order,index) in orders" :key="order.orderId">
                    <div class="card card-bottom">
                        <div class="card-header  d-flex justify-content-between" :id="'heading-'+index">
                            <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#purchaseModal">🗑️</button>
                            <button class="btn btn-primary btn-sm" type="button" data-toggle="collapse" :data-target="'#collapse-'+index"
                                aria-expanded="false" :aria-controls="'collapse'+index">
                                顯示訂單細節
                            </button>
                            <div class="h3 d-inline-block mt-2 " >
                                <strong>金流:{{order.cashFlow}}</strong>
                                <strong>訂單狀態:{{order.status}}</strong>
                            </div>
                        </div>

                    </div>
                    <div :id="'collapse-'+index" class="collapse show " :aria-labelledby="'heading-'+index" data-parent="#accordionExample">
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th width="20"></th>
                                    <th width="100"></th>
                                    <th> 商品名稱</th>
                                    <th>數量</th>
                                    <th>日期</th>
                                    <th>天數</th>
                                    <th class="text-center" width="120">小計</th>
                                </tr>
                            </thead>
                            <tbody  v-for="(detail,index) in order.orderDetails">
                                <tr>
                                    <td class="align-middle"><button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#purchaseModal">🗑️</button>
                                    <td class="align-middle">
                                        <div class="card p-1 card-bottom">
                                            <img :src="'${contextRoot}/back/product/photo/'+detail.product.productId"
                                                alt="..." width="80px;">
                                        </div>
                                    </td>
                                    <td class="align-middle ">{{detail.product.productName}}</td>
                                    <td class="align-middle">{{detail.amount}}</td>
                                    <td class="align-middle">{{detail.product.productPrice}}</td>
                                	<td class="align-middle">{{detail.date}}</td>
                                	<td class="align-middle text-right">{{detail.totalDays}}</td>
                                </tr>
                                <tr class="text-right">
                                    <td colspan="6"><strong>合計</strong></td>
                                    <td><strong>{{detail.product.productPrice*detail.amount}}</strong></td>
                                </tr>
                            </tbody>

                        </table>


                    </div>
                </div>
</div>
</div>
<div class="modal fade" id="purchaseModal" tabindex="-1" role="dialog" aria-labelledby="purchaseLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                確定刪除?
                </div>
                <div class="modal-footer">
                	<button type="button" class="btn btn-danger" data-dismiss="modal">是</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">否</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

var c = null;
jQuery.ajax({
	url:'${contextRoot}/order/all',
  async :false, 
	success:function(res){
		c = res;
	},
	error:function(err){
		console.log(err);
	}
})
var vm = new Vue({
  el:'#app',
  data:{orders:c,del:null},
  methods:{
	  delOrder(){
		  this.orders.splice(index,1);
	  },
	  delDetail(){
		  
	  }
  },
});
</script>
<jsp:include page="layout/footer.jsp" />