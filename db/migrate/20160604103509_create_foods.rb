class CreateFoods < ActiveRecord::Migration
  require 'postgres_ext'

  def change
    create_table :foods do |t|
      t.integer :restaurant_id
      t.string :name
      t.text :tags, array: true, default: []
      t.decimal :price, precision: 4, scale: 2
      t.text :description

      t.timestamps null: false
    end
  end
end
