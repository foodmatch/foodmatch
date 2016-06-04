class CreateCarts < ActiveRecord::Migration
  require 'postgres_ext'

  def change
    create_table :carts do |t|
      t.integer :user_id
      t.text :food_ids, array: true, default: []

      t.timestamps null: false
    end
  end
end
