class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_with_http_digest
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  def after_update_path_for(resource)
    user_path(resource)
  end

  def configure_permitted_parameters
    added_attrs = [ :nickname, :email, :image, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :account_destroy, keys: added_attrs
  end

end
