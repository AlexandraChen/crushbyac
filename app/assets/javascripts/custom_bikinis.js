$(document).ready(function () { 
  // Top neck tie color/pattern
  $(".top-neck-tie-pattern").click(function() {
    if($(this).val()){
      $("pattern#top-neck-tie image").attr("xlink:href", $(this).val() )
      $(".top-neck-tie").attr("fill","url(#top-neck-tie)")
    } 
    else {  
      $(".top-neck-tie").attr("fill","#fff")
    }
  })
  // Top main color / pattern 
  $(".top-fill-pattern").click(function() {
    if($(this).val()){
      $("pattern#top-fill image").attr("xlink:href", $(this).val() )
      $(".top-fill").attr("fill","url(#top-fill)")
    } 
    else {  
      $(".top-fill").attr("fill","#fff")
    }
  })
// Top back tie color / pattern
  $(".top-back-tie-pattern").click(function() {
    if($(this).val()){
      $("pattern#top-back-tie image").attr("xlink:href", $(this).val() )
      $(".top-back-tie").attr("fill","url(#top-back-tie)")
    } 
    else {  
      $(".top-back-tie").attr("fill","#fff")
    }
  })

// Top ruffles color/pattern
  $(".top-ruffles-pattern").click(function() {
    if($(this).val()){
      $("pattern#top-ruffles image").attr("xlink:href", $(this).val() )
      $(".top-ruffles").attr("fill","url(#top-ruffles)")
    } 
    else {  
      $(".top-ruffles").attr("fill","#fff")
    }
  })

// Bottom main color/pattern
  $(".bottom-fill-pattern").click(function() {
    if($(this).val()){
      $("pattern#bottom-fill image").attr("xlink:href", $(this).val() )
      $(".bottom-fill").attr("fill","url(#bottom-fill)")
    } 
    else {  
      $(".bottom-fill").attr("fill","#fff")
    }
  })

//Bottom laterals color/pattern
  $(".bottom-lateral-pattern").click(function() {
    if($(this).val()){
      $("pattern#bottom-lateral image").attr("xlink:href", $(this).val() )
      $(".bottom-lateral").attr("fill","url(#bottom-lateral)")
    } 
    else {  
      $(".bottom-lateral").attr("fill","#fff")
    }
  })
})

