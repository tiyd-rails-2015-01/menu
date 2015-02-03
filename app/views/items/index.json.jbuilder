json.array!(@items) do |item|
  json.extract! item, :id, :categpry_name, :name, :description, :price
  json.url item_url(item, format: :json)
end
