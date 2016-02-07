$(document).ready(function () { 
  // Top main color / pattern 
  $(".top-fill-pattern").keyup(function() {
    $(".top-fill-color").val("")
    if($(this).val()){
      $("pattern#top-fill image").attr("xlink:href", $(this).val() )
      $(".top-fill").attr("fill","url(#top-fill)")
    } 
    else {  
      $(".top-fill").attr("fill","#fff")
    }
  })

  $(".top-fill-color").keyup(function() {
    $(".top-fill-pattern").val("")
    if($(this).val()){
      $(".top-fill").attr({"fill": $(this).val() })
    }
    else {
       $(".top-fill").attr("fill","#fff")
    }
  })

// Top back tie color / pattern
  $(".top-back-tie-pattern").keyup(function() {
    $(".top-back-tie-color").val("")
    if($(this).val()){
      $("pattern#top-back-tie image").attr("xlink:href", $(this).val() )
      $(".top-back-tie").attr("fill","url(#top-back-tie)")
    } 
    else {  
      $(".top-back-tie").attr("fill","#fff")
    }
  })

  $(".top-back-tie-color").keyup(function() {
    $(".top-back-tie-pattern").val("")
    if($(this).val()){
      $(".top-back-tie").attr({"fill": $(this).val() })
    }
    else {
       $(".top-back-tie").attr("fill","#fff")
    }
  })

// Top neck tie color/pattern

  $(".top-neck-tie-pattern").keyup(function() {
    $(".top-neck-tie-color").val("")
    if($(this).val()){
      $("pattern#top-neck-tie image").attr("xlink:href", $(this).val() )
      $(".top-neck-tie").attr("fill","url(#top-neck-tie)")
    } 
    else {  
      $(".top-neck-tie").attr("fill","#fff")
    }
  })

  $(".top-neck-tie-color").keyup(function() {
    $(".top-neck-tie-pattern").val("")
    if($(this).val()){
      $(".top-neck-tie").attr({"fill": $(this).val() })
    }
    else {
       $(".top-neck-tie").attr("fill","#fff")
    }
  })

// Top ruffles color/pattern
  $(".top-ruffles-pattern").keyup(function() {
    $(".top-ruffles-color").val("")
    if($(this).val()){
      $("pattern#top-ruffles image").attr("xlink:href", $(this).val() )
      $(".top-ruffles").attr("fill","url(#top-ruffles)")
    } 
    else {  
      $(".top-ruffles").attr("fill","#fff")
    }
  })

  $(".top-ruffles-color").keyup(function() {
    $(".top-ruffles-pattern").val("")
    if($(this).val()){
      $(".top-ruffles").attr({"fill": $(this).val() })
    }
    else {
       $(".top-ruffles").attr("fill","#fff")
    }
  })

// Bottom main color/pattern
  $(".bottom-fill-pattern").keyup(function() {
    $(".bottom-fill-color").val("")
    if($(this).val()){
      $("pattern#bottom-fill image").attr("xlink:href", $(this).val() )
      $(".bottom-fill").attr("fill","url(#bottom-fill)")
    } 
    else {  
      $(".bottom-fill").attr("fill","#fff")
    }
  })

  $(".bottom-fill-color").keyup(function() {
    $(".bottom-fill-pattern").val("")
    if($(this).val()){
      $(".bottom-fill").attr({"fill": $(this).val() })
    }
    else {
       $(".bottom-fill").attr("fill","#fff")
    }
  })

//Bottom laterals color/pattern
  $(".bottom-lateral-pattern").keyup(function() {
    $(".bottom-lateral-color").val("")
    if($(this).val()){
      $("pattern#bottom-lateral image").attr("xlink:href", $(this).val() )
      $(".bottom-lateral").attr("fill","url(#bottom-lateral)")
    } 
    else {  
      $(".bottom-lateral").attr("fill","#fff")
    }
  })

  $(".bottom-lateral-color").keyup(function() {
    $(".bottom-lateral-pattern").val("")
    if($(this).val()){
      $(".bottom-lateral").attr({"fill": $(this).val() })
    }
    else {
       $(".bottom-lateral").attr("fill","#fff")
    }
  })
})

