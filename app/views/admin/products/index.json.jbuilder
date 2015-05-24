json.array!(@products) do |product|
  json.extract! product, :name, :description, :price, :downloads, :store_id, :tags, :small_description, :author, :release_date, :version
  json.url product_url(product, format: :json)
end