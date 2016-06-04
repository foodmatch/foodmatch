class CreatePreferences < ActiveRecord::Migration
  require 'postgres_ext'

  def change
    create_table :preferences do |t|
      t.integer :user_id
      t.text :tags, array: true, default: []

      t.timestamps null: false
    end
  end
end
