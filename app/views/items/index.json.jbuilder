json.array!(@items) do |item|
  json.extract! item, :id, :image, :price, :description, :category_key
  json.url item_url(item, format: :json)
end
