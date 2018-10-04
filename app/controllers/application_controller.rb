class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_login
    if !user_signed_in?
      flash[:error] = "You must be logged in to do that!"
      redirect_to new_user_session_path
    end
  end
  end

  def after_sign_up_path_for(resource)
    byebug
  if resource.is_a?(User)
  redirect_to new_goal_path
  else
    super
  end
end


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
