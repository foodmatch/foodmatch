class Cart < ActiveRecord::Base
  has_many :transactions
end
