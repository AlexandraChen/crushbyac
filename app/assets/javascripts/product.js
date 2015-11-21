$(document).ready(function () {
  $('#interested-product').click(function(){
    $('#contact-product').toggle()
  })

  function search_query() {
    var query = $('#search').val()
    router.collection.fetch(query, function () {
      router.ProductComponent.render()
    })
  }

  $('#bikinis').click(function(event){
    event.preventDefault()
    $('#search').val("bikini")
    search_query()
  })

  $('#all-products').click(function(event){
    event.preventDefault()
    $('#search').val("")
    search_query()
  })

  $('#trikinis').click(function(event){
    event.preventDefault()
    $('#search').val("trikini")
    search_query()
  })

  $('#one-piece').click(function(event){
    event.preventDefault()
    $('#search').val("onesie")
    search_query()
  })

  $('#cover-ups').click(function(event){
    event.preventDefault()
    $('#search').val("salida")
    search_query()
  })

  $('#accessories').click(function(event){
    event.preventDefault()
    $('#search').val("accessories")
    search_query()
  })

  $('#clothing').click(function(event){
    event.preventDefault()
    $('#search').val("activewear")
    search_query()
  })

})

