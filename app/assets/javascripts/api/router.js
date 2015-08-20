var Router = function (){  
  this.collection = new ProductsCollection()
  this.ProductComponent = new ProductComponent(this.collection)
  this.listener()
}

Router.prototype.listener = function (){
  var router = this
  $("#search").on('keyup', function (event){
    var query = $(event.currentTarget).val()
    router.collection.fetch(query, function () {
      router.ProductComponent.render()
    })
    // $(event.currentTarget).after(query)
  })
}

