
var ProductComponent = function(collection){
  this.collection = collection
}

ProductComponent.prototype.template = function(product){
  var products = "products/"
  var productTemplate = "<div class='col-sm-4'><a href="+ products + product.id 
  + "><div class='site-product'><div class='product-details-index'><p id='title-index'>"
  + product.title + "</p><p class='price-index'>$" + product.price + "</p></div>" 
  + "<img class='product-img' src=" + product.image_url + "></a></div><br>"
  
  return productTemplate
}
ProductComponent.prototype.render = function(){
  if(this.collection.products.length === 0){
    return "<p>No results found</p>"
  } 
  else {
    var component = this
    $(".row.all-products").empty()
    this.collection.products.forEach(function(product){
      $(".row.all-products").append(component.template(product))
    })
  }
}

var ProductsCollection = function(){
  this.products = []
  this.url = "api/products/?utf8=%E2%9C%93&search="
}

ProductsCollection.prototype.fetch = function(query, callback){
  var request = $.get(this.url + query)
  var collection = this
  request.done(function(result){
    collection.products = result
    callback();
  })
}

var Router = function (){ 
  this.listener()
  this.collection = new ProductsCollection()
  this.ProductComponent = new ProductComponent(this.collection)
}

Router.prototype.listener = function (){
  var router = this
  $("#search").on('keyup', function (){
    var query = $(event.currentTarget).val()
    router.collection.fetch(query, function () {
      router.ProductComponent.render();
    })
  })
}