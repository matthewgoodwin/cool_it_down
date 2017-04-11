$(document).ready(function(){
  setInterval(function(){
    $('.order').load('show.html.erb #lounge-order-receipt');
    // alert('update');
  }, 7000);
});
