$(document).ready(function () {
  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $('.scrollup').fadeIn()
    } else {
      $('.scrollup').fadeOut()
    }
  });
  $('.scrollup').click(function () {
    $("html, body").animate({
      scrollTop: 0
    }, 900)
    return false
  })
  $('a[href^="#value-proposition"], a[href^="#location"], a[href^="#contact-us"],a[href^="#contact-product"]').on('click',function (event) {
    event.preventDefault()
    var target = this.hash
    var $target = $(target)
    $('html, body').stop().animate({
      'scrollTop': $target.offset().top
    }, 900, 'swing', function () {
      window.location.hash = target
   })
  })

  setTimeout(function() {
    $("#notice, #alert").fadeOut().empty();
  }, 5000);
  
  $("#notice, #alert").on("click",function(){
    $(this).fadeOut();
   })

  $('#search-form').on("submit",function(event){
    event.preventDefault()
  })

   $('body').bind('mousewheel', function(e){
    if(e.originalEvent.wheelDelta < 0) {
        userScrollDown()
    } else {
        userScrollUp()
    }
  })

  // nav bar hide an show
  // function userScrollDown() {
  //   $('.navbar').css('top', '-103px')
  // }

  // function userScrollUp() {
  //   $('.navbar').css('top', '0')
  // }

})

