class User::RegistrationsController < Devise::RegistrationsController #will first look here and anything not found will be found in the parent class
    before_filter :configure_permitted_parameters
    
    
    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
    end
end