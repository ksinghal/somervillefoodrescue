class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_filter :update_sanitized_params, if: :devise_controller?
	before_filter :set_timezone

	def set_timezone
		Time.zone = 'Eastern Time (US & Canada)'
	end

	def update_sanitized_params
		devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:full_name, :phone_number, :email, :password, :password_confirmation, :avatar)}
	end
end
