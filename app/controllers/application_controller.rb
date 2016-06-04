class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :user_preferences_present?, except: [:authenticate_user!]

  def user_preferences_present?
    if current_user.preferences.first.tags == []
      redirect_to user_preferences_home_index_path
    end
  end
end
