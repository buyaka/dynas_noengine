json.array!(@items) do |item|
  json.extract! item, :id, :box_id, :name, :type, :note
  json.url item_url(item, format: :json)
end
