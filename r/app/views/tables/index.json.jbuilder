json.array!(@tables) do |table|
  json.extract! table, :id, :ime, :chislo
  json.url table_url(table, format: :json)
end
