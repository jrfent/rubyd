json.array!(@pins) do |pin|
  json.extract! pin, :id, :description, :listing_id, :user_id
  json.url pin_url(pin, format: :json)
end
