class Restaurant < ActiveRecord::Base
  belongs_to :merchant, class_name: 'User', foreign_key: :merchant_id
  has_many :restaurant_ratings
end
