json.array!(@items) do |item|
  json.extract! item, :id, :price, :name, :description, :category_key
  json.url item_url(item, format: :json)
end
