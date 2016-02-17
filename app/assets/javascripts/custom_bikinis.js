$(document).ready(function () { 
  //Top design
  $(".top-design").click(function() {
    $("#top-design-picked").attr("value", $(this).val() )
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
})

