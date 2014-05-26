class AdminController < ApplicationController
  def login
    if request.post?
      if Authenticator.login(*admin_params.values)
        session[:admin] = true
        redirect_to root_path
      else
        flash[:error] = "Name or password is invalid"
        redirect_to admin_login_path, status: 404
      end
    end
  end

  def logout
    reset_session
    redirect_to root_path
  end

  private

  def admin_params
    params.require(:admin).permit :name, :password
  end
end
