class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admins_home_index_path
    when User
      root
    end
  end 
end
