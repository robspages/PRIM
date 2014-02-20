json.array!(@product_attributes) do |product_attribute|
  json.extract! product_attribute, :id, :product_id, :attribute_id, :locale, :value
  json.url product_attribute_url(product_attribute, format: :json)
end
