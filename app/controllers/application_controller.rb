class ApplicationController < ActionController::Base
  before_filter :authorize, :except => :login
  helper :all

  protected
   def authorize
     unless User.find_by_id(session[:user_id])
       flash[:notice] = "Please Log in"
       redirect_to :controller =>  'dashboard', :action => 'login'
     end
   end
  private
  def current_user
    User.find_by_id(session[:user_id])
  end


end
