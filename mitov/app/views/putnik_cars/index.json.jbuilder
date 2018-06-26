json.array!(@putnik_cars) do |putnik_car|
  json.extract! putnik_car, :id, :putnic_id, :car_id
  json.url putnik_car_url(putnik_car, format: :json)
end
