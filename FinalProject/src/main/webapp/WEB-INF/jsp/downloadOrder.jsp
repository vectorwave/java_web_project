<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="layout/header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<script type="text/javascript" src="${contextRoot}/js/vue.min.js"></script>
<script src="${contextRoot}/js/xlsx.mini.min.js"></script>
<script src="${contextRoot}/js/FileSaver.js"></script>

<div class="d-flex justify-content-center">
	<div class="d-flex justify-content-center" style="visibility: hidden">
		<main class="px-3">
			<h1>下載訂單</h1>
			<p class="lead">點擊下面的按鈕來下載你的訂單</p>
			<p class="lead">
				<button type="button" class="btn btn-primary btn-xs">點我下載</button>
			</p>
		</main>
	</div>
</div>
<div class="d-flex justify-content-center">
	<main class="px-3">
		<h1>下載訂單</h1>
		<p class="lead">點擊下面的按鈕來下載你的訂單</p>
		<p class="lead">
			<button type="button" class="btn btn-primary btn-xs" onclick="download()">點我下載</button>
		</p>
	</main>
</div>
<script type="text/javascript">
class Workbook {
    constructor() {
        if (!(this instanceof Workbook)) return new Workbook();
        this.SheetNames = [];
        this.Sheets = {};
        this.wopts = {
            bookType: 'xlsx',
            bookSST: false,
            type: 'binary'
        };
    }
    appendSheet(sheet, name = 'sheet' + (this.SheetNames.length + 1)) {
        this.SheetNames = [...this.SheetNames, name];
        this.Sheets[name] = sheet;
    }
    toBlob(option = this.wopts) {
        // 字串轉 ArrayBuffer
        function s2ab(s) {
            var buf = new ArrayBuffer(s.length);
            var view = new Uint8Array(buf);
            for (var i = 0; i !== s.length; ++i) view[i] = s.charCodeAt(i) & 0xFF;
            return buf;
        }
        var wbout = XLSX.write(this, option);
        var blob = new Blob([s2ab(wbout)], { type: 'application/octet-stream' });
        return blob;
    }
    isEmpty() {
        return !this.SheetNames.length && JSON.stringify(this.Sheets === "{}");
    }
};
const workbook = new Workbook();
function download(){
	jQuery.ajax({
		url:'${contextRoot}/order/all',
	  async :false, 
		success:function(res){
			var temp = [['orderId','cashFlow','status','productName','price','amount','date','totalDays']];
			res.forEach(function(order){
				let tempO = [];
				tempO.push(order.orderId);
				tempO.push(order.cashFlow);
				tempO.push(order.status);
				temp.push(tempO);
				order.orderDetails.forEach(function(orderDetail){
					let tempD = [,,,];
					tempD.push(orderDetail.product.productName);
					tempD.push(orderDetail.product.productPrice);
					tempD.push(orderDetail.amount);
					tempD.push(orderDetail.date);
					tempD.push(orderDetail.totalDays);
					temp.push(tempD);
				});
			});
			const sheet = XLSX.utils.aoa_to_sheet(temp);
		    workbook.appendSheet(sheet, 'sheet_name_1');
		    saveAs(workbook.toBlob(),"myOrder.xls");
		},
		error:function(err){
			console.log(err);
		}
	});
}
</script>
<jsp:include page="layout/footer.jsp" />