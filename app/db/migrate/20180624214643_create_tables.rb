class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :ime
      t.integer :chislo

      t.timestamps null: false
    end
  end
end
