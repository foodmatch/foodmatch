class User::RegistrationsController < Devise::RegistrationsController
before_action :user_params, only: [:create]

  def new
    super
  end

  def create
    current_user = User.new(user_params)
    if current_user.save
      redirect_to user_preferences_home_index_path
    end
  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
