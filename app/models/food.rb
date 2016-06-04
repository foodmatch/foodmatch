class Food < ActiveRecord::Base
  has_many :food_ratings

  acts_as_taggable
end
