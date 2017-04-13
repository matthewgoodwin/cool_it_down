$(document).ready(function(){
  setInterval(function(){
    $('.order').load('show.html.erb #lounge-order-receipt');
    // $('#lounge-order-receipt').load('orders/order_receipt.html.erb');
    // $('#lounge-order-receipt').load('<%= render "orders/order_receipt", order: order %>');
    // alert('update');
  }, 7000);
});
