class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :cart_id
      t.decimal :total_price, precision: 4, scale: 2

      t.timestamps null: false
    end
  end
end
