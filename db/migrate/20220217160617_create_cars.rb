class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :year
      t.string :image
      t.boolean :reserved
      t.integer :price

      t.timestamps
    end
  end
end
