class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
  end

  def user_preferences
  end

  def update_user_preferences
    array_of_arrays = params[:preferences]
    array_of_arrays.each do |array_of_tags|
      current_user.preferences.create(tags: array_of_tags)
    end
    redirect_to foods_path
  end
end
