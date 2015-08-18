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
  $('a[href^="#value-proposition"], a[href^="#location"]').on('click',function (event) {
    event.preventDefault()
    var target = this.hash
    var $target = $(target)
    $('html, body').stop().animate({
      'scrollTop': $target.offset().top
    }, 900, 'swing', function () {
      window.location.hash = target
   })
  })

})