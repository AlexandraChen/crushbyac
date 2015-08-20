json.array! @products.each do |product|
  json.discount product.discount
  json.title product.title
  json.price product.price
  json.image_url product.img.url
  json.id product.id
  json.description product.description
  json.categories product.categories
  json.tags product.tags
end

