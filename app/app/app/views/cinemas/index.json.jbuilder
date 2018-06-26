json.array!(@cinemas) do |cinema|
  json.extract! cinema, :id, :location
  json.url cinema_url(cinema, format: :json)
end
