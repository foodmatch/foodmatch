class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :restaurant_id
      t.string :name
      t.string :tags, array:true, default: []
      t.decimal :price, precision: 4, scale: 2
      t.text :description

      t.timestamps null: false
    end
  end
end
