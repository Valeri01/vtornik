json.array!(@cinema_films) do |cinema_film|
  json.extract! cinema_film, :id, :cinema, :film_id
  json.url cinema_film_url(cinema_film, format: :json)
end
