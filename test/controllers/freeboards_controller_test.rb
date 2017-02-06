require 'test_helper'

class FreeboardsControllerTest < ActionController::TestCase
  setup do
    @freeboard = freeboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:freeboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create freeboard" do
    assert_difference('Freeboard.count') do
      post :create, freeboard: {  }
    end

    assert_redirected_to freeboard_path(assigns(:freeboard))
  end

  test "should show freeboard" do
    get :show, id: @freeboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @freeboard
    assert_response :success
  end

  test "should update freeboard" do
    patch :update, id: @freeboard, freeboard: {  }
    assert_redirected_to freeboard_path(assigns(:freeboard))
  end

  test "should destroy freeboard" do
    assert_difference('Freeboard.count', -1) do
      delete :destroy, id: @freeboard
    end

    assert_redirected_to freeboards_path
  end
end
