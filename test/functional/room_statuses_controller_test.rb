require 'test_helper'

class RoomStatusesControllerTest < ActionController::TestCase
  setup do
    @room_status = room_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_status" do
    assert_difference('RoomStatus.count') do
      post :create, :room_status => @room_status.attributes
    end

    assert_redirected_to room_status_path(assigns(:room_status))
  end

  test "should show room_status" do
    get :show, :id => @room_status.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @room_status.to_param
    assert_response :success
  end

  test "should update room_status" do
    put :update, :id => @room_status.to_param, :room_status => @room_status.attributes
    assert_redirected_to room_status_path(assigns(:room_status))
  end

  test "should destroy room_status" do
    assert_difference('RoomStatus.count', -1) do
      delete :destroy, :id => @room_status.to_param
    end

    assert_redirected_to room_statuses_path
  end
end
