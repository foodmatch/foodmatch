class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :check_if_user_has_preferences

  def check_if_user_has_preferences
    if current_user.present?
      if current_user.has_preferences? == false
        redirect_to user_preferences_home_index_path
      end
    end
  end
end
