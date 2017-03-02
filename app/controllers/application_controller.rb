class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_filter :configure_permitted_parameters, if: :devise_controller?
 #configure parameters if devise controller is active or true
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
		#for the devise parameters(email, password.. lets also allow the following keys.. "name" )
	end
end
