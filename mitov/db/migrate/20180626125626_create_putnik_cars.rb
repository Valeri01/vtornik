class CreatePutnikCars < ActiveRecord::Migration
  def change
    create_table :putnik_cars do |t|
      t.integer :putnic_id
      t.integer :car_id

      t.timestamps null: false
    end
  end
end
