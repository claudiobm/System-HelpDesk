require 'test_helper'

class TechnicalsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technical" do
    assert_difference('Technical.count') do
      post :create, :technical => { }
    end

    assert_redirected_to technical_path(assigns(:technical))
  end

  test "should show technical" do
    get :show, :id => technicals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => technicals(:one).to_param
    assert_response :success
  end

  test "should update technical" do
    put :update, :id => technicals(:one).to_param, :technical => { }
    assert_redirected_to technical_path(assigns(:technical))
  end

  test "should destroy technical" do
    assert_difference('Technical.count', -1) do
      delete :destroy, :id => technicals(:one).to_param
    end

    assert_redirected_to technicals_path
  end
end
