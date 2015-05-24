json.array!(@stores) do |store|
  json.extract! store, :id, :name, :url
  json.url admin_store_url(store, format: :json)
end
