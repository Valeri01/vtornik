json.array!(@cars) do |car|
  json.extract! car, :id, :marka, :model, :number
  json.url car_url(car, format: :json)
end
