class ApplicationController < ActionController::Base
  before_filter :authorize, :except => :login
  helper :all

  protect_from_forgery
  def current_user
    current_user = User.find_by_id(session[:user_id])
  end

  protected
   def authorize
     unless User.find_by_id(session[:user_id])
       flash[:notice] = "Please Log in"
       redirect_to :controller =>  'dashboard', :action => 'login'
     end
   end

end
