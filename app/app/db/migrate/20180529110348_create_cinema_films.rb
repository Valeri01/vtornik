class CreateCinemaFilms < ActiveRecord::Migration
  def change
    create_table :cinema_films, id: false do |t|
      t.id :cinema
      t.integer :film_id

      t.timestamps null: false
    end
  end
end
