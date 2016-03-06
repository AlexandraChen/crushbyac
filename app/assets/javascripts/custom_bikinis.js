$(document).ready(function () { 
  //Top design
  $(".top-design").click(function() {
    $('.top-svg').css('visibility', 'hidden')
    var top_id = $(this).val()
    $("#top-design-picked").attr("value", top_id )
    $('#'+ top_id).css('visibility', 'visible')
  })
  //Bottom design
  $(".bottom-design").click(function() {
    $('.bottom-svg').css('visibility', 'hidden')
    var bottom_id = $(this).val()
    $("#bottom-design-picked").attr("value", bottom_id )
    $('#'+ bottom_id).css('visibility', 'visible')
  })
  // Top neck tie color/pattern
  $(".top-neck-tie-fill").click(function() {
    if($(this).val()){
      $("pattern#top-neck-tie image").attr("xlink:href", $(this).val() )
      $(".top-neck-tie").attr("fill","url(#top-neck-tie)")
      $("#top-neck-tie-fill-picked").attr("value", $(this).attr("data-fill-name") )
    } 
    else {  
      $(".top-neck-tie").attr("fill","#fff")
    }
  })
  // Top main color / pattern 
  $(".top-main-fill").click(function() {
    if($(this).val()){
       var fill_id = $(this).attr("data-fill-name")
      $("pattern#top-fill image").attr("xlink:href", $(this).val() )
      $(".top-fill").attr("fill","url(#top-fill)")
      $("#top-main-fill-picked").attr("value", $(this).attr("data-fill-name") )
    } 
    else {  
      $(".top-fill").attr("fill","#fff")
    }
  })
// Top back tie color / pattern
  $(".top-back-tie-fill").click(function() {
    if($(this).val()){
      $("pattern#top-back-tie image").attr("xlink:href", $(this).val() )
      $(".top-back-tie").attr("fill","url(#top-back-tie)")
      $("#top-back-tie-fill-picked").attr("value", $(this).attr("data-fill-name") )
    } 
    else {  
      $(".top-back-tie").attr("fill","#fff")
    }
  })
// Top ruffles color/pattern
  $(".top-ruffles-fill").click(function() {
    if($(this).val()){
      $("pattern#top-ruffles image").attr("xlink:href", $(this).val() )
      $(".top-ruffles").attr("fill","url(#top-ruffles)")
      $("#top-ruffles-fill-picked").attr("value", $(this).attr("data-fill-name") )
    } 
    else {  
      $(".top-ruffles").attr("fill","#fff")
    }
  })
// Bottom main color/pattern
  $(".bottom-main-fill").click(function() {
    if($(this).val()){
      $("pattern#bottom-fill image").attr("xlink:href", $(this).val() )
      $(".bottom-fill").attr("fill","url(#bottom-fill)")
      $("#bottom-main-fill-picked").attr("value", $(this).attr("data-fill-name") )
    } 
    else {  
      $(".bottom-fill").attr("fill","#fff")
    }
  })
//Bottom laterals color/pattern
  $(".bottom-lateral-fill").click(function() {
    if($(this).val()){
      $("pattern#bottom-lateral image").attr("xlink:href", $(this).val() )
      $(".bottom-lateral").attr("fill","url(#bottom-lateral)")
      $("#bottom-lateral-fill-picked").attr("value", $(this).attr("data-fill-name") )
    } 
    else {  
      $(".bottom-lateral").attr("fill","#fff")
    }
  })
  //sizing
  $("#height").on('keyup',function(){
    $("#height-picked").val( $(this).val() )
  })
  $("#bust").on('change',function(){
    $("#bust-picked").val( $("#bust").val() )
  })
  $("#waist").on('keyup',function(){
    $("#waist-picked").val( $(this).val() )
  })
  $("#hips").on('keyup',function(){
    $("#hips-picked").val( $(this).val() )
  })
  // 1 2 3 steps to custom bikini
  $(".top-design").click(function() {
    $('html,body').animate({
        scrollTop: $(".bottom-pic").offset().top - $(".bottom-pic").height()/2},
        'slow')
  })

  $(".bottom-design").click(function() {
    $('html,body').animate({
        scrollTop: $(".custom-bikini").offset().top},
        'slow')
  })

  
  $(".custom-design-btn").click(function() {
    $('html,body').animate({
        scrollTop: $(".bikini-size-wrapper").offset().top},
        'slow')
  })

  $(".bikini-size-btn").click(function() {
    if($("#height").val() != "" && $("#waist").val() != "" && $("#hips").val() != "" && $("#bust").val() != null) {
      $('html,body').animate({
        scrollTop: $(".custom-bikini-form").offset().top- $(".custom-bikini-form").height()/5},
        'slow')
      return false
    }
    
  })

})

