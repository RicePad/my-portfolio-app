class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #add name parameters to devise authentication:
 include DeviseWhitelist
  


 #add :name parameters to devise authentication without using concerns:

#   before_action :add_other_params_to_devise, if: :devise_controller?
  
#   def add_other_params_to_devise 
#     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
#     devise_parameter_sanitizer.permit(:account_update, keys: [:name])
#   end


end
