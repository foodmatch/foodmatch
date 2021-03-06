class CreateRestaurantRatings < ActiveRecord::Migration
  def change
    create_table :restaurant_ratings do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :value, default: 0

      t.timestamps null: false
    end
  end
end
