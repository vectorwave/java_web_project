var list;
$.ajax({
  url:'order/15',
  method:'GET',
  async:false,
  dataType:'json',
  success:function (response){
    list = response;
  } 
})
console.log(list);
var app = new Vue({
  el: '#app',
  data: list,
  methods: {
    show:function(){
      console.log(JSON.stringify(this.$data));
    },
    cookie:function(){
      Cookies.set('cart',JSON.stringify(this.$data),{secure:"false",sameSite:"None"});
      console.log(Cookies.get('cart'));
    },
    post: function () {
      $.ajax({
        url: 'test',
        method: 'POST',
        contentType:'application/json;charset=UTF-8',
        data:JSON.stringify(this.$data.cashFlow),
        success: function (res) { console.log(res) },
        error: function (err) { console.log(err) },
      })
    },
    handlePlus: function (item) {
      item.amount++;
    },
    handleSub: function (item) {
      if (item.amount > 1) {
        item.amount--;
      }
    },
    handledelete: function (index) {
      console.log(this);
      this.details.splice(index, 1);
    },
  },
  computed: {

  }
});
