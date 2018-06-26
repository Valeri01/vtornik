json.array!(@putniks) do |putnik|
  json.extract! putnik, :id, :name, :phone
  json.url putnik_url(putnik, format: :json)
end
