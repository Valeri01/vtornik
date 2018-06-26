class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :marka
      t.string :model
      t.integer :number

      t.timestamps null: false
    end
  end
end
