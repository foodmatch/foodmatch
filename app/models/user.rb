class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :roles
  has_many :restaurants, foreign_key: 'merchant_id'
  has_many :food_ratings
  has_many :restaurant_ratings
  has_many :carts
  has_many :transactions
  has_many :preferences
  
end
