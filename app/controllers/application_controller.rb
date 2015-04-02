class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:mobile, :email, :password, :password_confirmation, :remember_me, :terms_and_conditions, customer_attributes: [:name,:state, :address_line1, :address_line2, :city_village, :district, :pin])}
   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :mobile, :email, :password, :remember_me) }
   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:mobile, :email, :password, :password_confirmation, :current_password) }
 end
end
