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
var temp = [['orderId', 'cashFlow', 'status', 'productName', 'price', 'amount', 'date', 'totalDays']];
