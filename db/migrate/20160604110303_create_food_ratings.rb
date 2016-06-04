class CreateFoodRatings < ActiveRecord::Migration
  def change
    create_table :food_ratings do |t|
      t.integer :user_id
      t.integer :food_id
      t.integer :value, default: 0

      t.timestamps null: false
    end
  end
end
