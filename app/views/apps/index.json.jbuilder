json.array!(@apps) do |app|
  json.extract! app, :id, :name, :member_id, :note, :app_key, :domain
  json.url app_url(app, format: :json)
end
