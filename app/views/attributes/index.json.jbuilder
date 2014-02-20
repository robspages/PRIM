json.array!(@attributes) do |attribute|
  json.extract! attribute, :id, :name, :attributeType_id, :isLocalizable
  json.url attribute_url(attribute, format: :json)
end
