<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${contextRoot}/css/all.min.css"/>
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>

<div id="app">

<div class="row justify-content-center mt-4">
            <div class="col-md-8">
                <div class="accordion" id="accordionExample" v-for="(order,index) in orders">
                    <div class="card card-bottom">
                        <div class="card-header  d-flex justify-content-between" id="headingOne">
                            <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne"
                                aria-expanded="true" aria-controls="collapseOne">
                                顯示訂單細節
                            </button>
                            <div class="h3 d-inline-block mt-2">
                                <strong>{{order.cashFlow}}</strong>
                                <strong>{{order.status}}</strong>
                            </div>
                        </div>

                    </div>
                    <div id="collapseOne" class="collapse show " aria-labelledby="headingOne" data-parent="#accordionExample">
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
                                    <td class="align-middle"><a href="#removeModal" class="text-dark" data-price="999"
                                            data-title="一級偽裝帽" data-toggle="modal" data-target="#removeModal"><i class="far fa-trash-alt mr-3"></i></a></td>
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
  data:{orders:c},
  methods:{},

});
</script>
<jsp:include page="layout/footer.jsp" />