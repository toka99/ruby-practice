class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_in) do |user_params|
          user_params.permit(:username, :email)
        end
      end

    def destroy   
        sign_out current_user
    end
    
    def after_sign_in_path_for(resource)
        if session[:user_return_to] == nil
            articles_path
        else
          super
        end
    end


end
