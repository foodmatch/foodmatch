class FoodsController < ApplicationController
  include FoodsHelper

  before_action :set_food, only: [:show]

  def index
    @most_popular_list = populate_most_popular_list
    @recommended_list_1 = populate_recommended_list(current_user.id, 1)
    @recommended_list_2 = populate_recommended_list(current_user.id, 2)
    @recommended_list_3 = populate_recommended_list(current_user.id, 3)
    @recommended_list_4 = populate_recommended_list(current_user.id, 4)
  end

  def show
  end

  def show
  end

  private
  def set_food
    @food = Food.find(params[:id])    
  end
end
