class Admins::SessionsController < Devise::SessionsController
  def create
    p "create!!!"
    #redirect_to admins_home_index_path
  end
end
