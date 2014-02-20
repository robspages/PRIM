json.array!(@products) do |product|
  json.extract! product, :id, :title, :productType_id, :shortDescription, :longDescription, :upc, :style_id, :sku
  json.url product_url(product, format: :json)
end
