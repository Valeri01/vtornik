class CreatePutniks < ActiveRecord::Migration
  def change
    create_table :putniks do |t|
      t.string :name
      t.integer :phone

      t.timestamps null: false
    end
  end
end
