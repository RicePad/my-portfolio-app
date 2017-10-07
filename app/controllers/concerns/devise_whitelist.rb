module DeviseWhitelist
    extend ActiveSupport::Concern
    
    included do
          before_action :add_other_params_to_devise, if: :devise_controller?
    end
     
      def add_other_params_to_devise 
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name])
      end
        

end