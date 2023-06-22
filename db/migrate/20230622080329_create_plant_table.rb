class CreatePlantTable < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_tables do |t|
      t.string :name
      t.string :image
      t.decimal :price

      t.timestamps
    end
  end
end
