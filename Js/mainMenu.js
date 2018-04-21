$(document).ready(function() {
  var h1 = $('.nav1').offset().top;
  var h2 = $('.nav2').offset().top;

  $(window).on('scroll', function(){
    if ($(window).scrollTop() > h1) {
        $('.nav1').addClass('Styck1');
          $('.nav2').addClass('Styck2');
    } else {
        $('.nav1').removeClass('Styck1');
          $('.nav2').removeClass('Styck2');
    }
  });
});
