module FoodsHelper
  def populate_list(user_id, list_number)
    user = User.find(user_id)
  end
end
