$(document).ready(function(){
 var Imgs = $('.Slider li').length;
   var position=1;
 console.log(Imgs);

  for (var i = 1; i<=Imgs; i++) {
    $('.Number').append('<li><span class="icon-controller-stop"></span></li>');
  }

  $('.Slider li').hide();
  function Start(){
    $('.Slider li:first').slideDown(1200);
  }
  setTimeout(Start, 1000);
  $('.Number li:first').css({'color': '#AFAFAF'});

  $('.Number li').click(Slider);
  $('.Aright span').click(right);
  $('.Aleft span').click(left);

  setInterval(function(){
    right();
  },5000);

  function Slider(){
    var NumberImg = $(this).index()+1;
    console.log(NumberImg);

    $('.Slider li').hide();
    $('.Slider li:nth-child('+ NumberImg +')').fadeIn(1000);
    $('.Number li').css({'color': '#2B2B2B'});
    $('.Number li:nth-child('+ NumberImg +')').css({'color': '#AFAFAF'});
    position=NumberImg;
  }

  function right(){
    position++;
    console.log(position);

    if (position <= Imgs) {
      $('.Slider li').hide();
      $('.Slider li:nth-child('+ position +')').fadeIn(1000);
      $('.Number li').css({'color': '#2B2B2B'});
      $('.Number li:nth-child('+ position +')').css({'color': '#AFAFAF'});
    } else {
      position=1;
      $('.Slider li').hide();
      $('.Slider li:nth-child('+ position +')').fadeIn(1000);
      $('.Number li').css({'color': '#2B2B2B'});
      $('.Number li:nth-child('+ position +')').css({'color': '#AFAFAF'});
    }
  }

  function left(){
    position--;
    console.log(position);

    if (position<=0) {
      position=Imgs;
      $('.Slider li').hide();
      $('.Slider li:nth-child('+ position +')').fadeIn(1000);
      $('.Number li').css({'color': '#2B2B2B'});
      $('.Number li:nth-child('+ position +')').css({'color': '#AFAFAF'});
    } else {
      $('.Slider li').hide();
      $('.Slider li:nth-child('+ position +')').fadeIn(1000);
      $('.Number li').css({'color': '#2B2B2B'});
      $('.Number li:nth-child('+ position +')').css({'color': '#AFAFAF'});
    }
  }
});
