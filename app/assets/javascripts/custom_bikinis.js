$(document).ready(function () { 
  $(".top-fill-field").keyup(function() {
    $(".top-fill").css({"fill": $(this).val() })
  })
  $(".top-back-tie-field").keyup(function() {
    $(".top-back-tie").css({"fill": $(this).val() })
  })
  $(".top-neck-tie-field").keyup(function() {
    $(".top-neck-tie").css({"fill": $(this).val() })
  })
  $(".top-ruffles-field").keyup(function() {
    $(".top-ruffles").css({"fill": $(this).val() })
  })
  $(".bottom-fill-field").keyup(function() {
    $(".bottom-fill").css({"fill": $(this).val() })
  })
  $(".bottom-lateral-field").keyup(function() {
    $(".bottom-lateral").css({"fill": $(this).val() })
  })
})

