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