module FoodsHelper
  def populate_most_popular_list
    @list = List.find_or_initialize_by(name: "Most Popular")
    @list.foods = []
    @list.foods = Food.find_by_sql("SELECT * FROM foods")
    return @list
  end
  def populate_recommended_list(user_id, list_number)
    user = User.find(user_id)

    user_preferences = user.preferences.flatten
    unique_user_preferences = user_preferences.uniq
    unsorted_user_preferences = []

    unique_user_preferences.each do |x|
      unsorted_user_preferences << [x,user_preferences.count(x)]
    end

    sorted_preferences = unsorted_user_preferences.sort {|x,y| y[1] <=> x[1]}

    @list = List.find_by(tag: sorted_preferences[list_number - 1])

    @list.foods = []
    @list.foods = Food.find_by_sql("SELECT * FROM foods JOIN food_ratings ON food_ratings.food_id = foods.id WHERE foods.tags @> '{#{@list.tag}}' ORDER BY food_ratings.value")

    return @list
  end
end
