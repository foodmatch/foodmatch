class AddImgUrlToFood < ActiveRecord::Migration
  def change
    add_column :foods, :img_url, :string
  end
end
