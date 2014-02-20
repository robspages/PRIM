json.array!(@cetegories) do |cetegory|
  json.extract! cetegory, :id, :name, :catID, :parentCatID, :isRoot
  json.url cetegory_url(cetegory, format: :json)
end
