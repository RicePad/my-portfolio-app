class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #add name parameters to devise authentication:
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  
  
# ***************************************************************************************  
    # source: jonli_view_tool gem was set and implemented in application helper  
    #   before_action :set_copyright
      
    #   def set_copyright
    #     @copyright = JLiCopyrightViewTool::Renderer.copyright "Jonathan Li", "All Rights Reserverd"
    #   end
    # end
      
    #   module JLiCopyrightViewTool
    #     class Renderer
    #       def self.copyright name, msg
    #         "&copy #{Time.now.year} <b>#{name}</b> #{msg}".html_safe
    #       end
    #     end

# ***************************************************************************************  
  
  
# ***************************************************************************************  
 
     #Found in /concerns/default_page_content
      # before_action :set_title
      
      #  def set_title
      #   @page_title = "Jonathan L. | My Portofolio"
        # end
 
# ***************************************************************************************  
  
  
# ***************************************************************************************  
  
    # set  guest user session with Openstruct without using concern
    # def current_user
    #   super || OpenStruct.new(new: "Guest User", first_name: "Guest", last_name: "User", email: "guest@example.com")
    # end
    

# ***************************************************************************************  


# ***************************************************************************************    
  
  # before_action :set_source
  
  # def set_source
  #   session[:source] = params[:q] if params[:q]
  # end
  
# ***************************************************************************************  


 
# ***************************************************************************************  
     #add :name parameters to devise authentication without using concerns:
    
    #   before_action :add_other_params_to_devise, if: :devise_controller?
      
    #   def add_other_params_to_devise 
    #     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #     devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    #   end
# ***************************************************************************************  


end
