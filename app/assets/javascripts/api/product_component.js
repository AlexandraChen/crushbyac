var ProductComponent = function(collection){
  this.collection = collection
}

ProductComponent.prototype.template = function(product){
  var products = "products/"
  var productTemplate = "<div class='col-sm-4 product-wrapper'><a href="+ products + product.id + "><div class='site-product'>"
  if(product.published == false){
    productTemplate += "<div class ='soldout-banner'></div><p id='soldout'>Vendido</p>"
  }
  if(product.published == true && product.discount != null){
    productTemplate += "<div class ='sale-banner'><p id='sale'>Sale!</p></div>"
  }
  productTemplate += "<div class='product-details-index'><p id='title-index'>" + product.title + "</p>" 
  if(product.discount == null){
    productTemplate += "<p id='price-index'>$" + parseInt(product.price) + "</p></div>" 
  } 
  else {
    productTemplate += "<p class='discount' id='price-index'> Antes $" + parseInt(product.price) + "</p>" + "<p id='price-index'>$" + parseInt(product.discount) + "</p></div>"          
  }
  productTemplate += "<img class='product-img' src=" + product.image_url + "></a></div><br>" 
  return productTemplate
}
ProductComponent.prototype.render = function(){
  // if(this.collection.products.length == 0){
  //   return "<p>No results found</p>"
  // } 
  // else {
    var component = this
    $(".row.all-products").empty()
    this.collection.products.forEach(function(product){
      $(".row.all-products").append(component.template(product))
    })
  // }
}