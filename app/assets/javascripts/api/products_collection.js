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