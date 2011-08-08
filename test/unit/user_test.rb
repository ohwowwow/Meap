require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
 def destroy
    @user = User.find(params[:id])
    begin
      flash[:notice] = "User #{@user.name} deleted"
      @user.destroy
    rescue Exception => e
      flash[:notice] = e.message
    end


    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
  test "the truth" do
    assert true
  end
end
