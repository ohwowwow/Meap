class DashboardController < ApplicationController
  def login
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        @logged = session[:user_id]
        redirect_to(:action => 'index')
      else
        flash.now[:notice] = "Invalid user/password combination"
        @logged = nil
      end
    end

  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

  def index
  end

end
