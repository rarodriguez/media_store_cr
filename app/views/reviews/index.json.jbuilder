json.array!(@reviews) do |review|
  json.extract! review, :id, :product_id, :user_id, :comment, :rating
  json.url review_url(review, format: :json)
end
