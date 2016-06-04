class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :merchant_id
      t.string :name
      t.string :address
      t.string :phone_num

      t.timestamps null: false
    end
  end
end
