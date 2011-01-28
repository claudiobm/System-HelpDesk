require 'test_helper'

class OrderTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_type" do
    assert_difference('OrderType.count') do
      post :create, :order_type => { }
    end

    assert_redirected_to order_type_path(assigns(:order_type))
  end

  test "should show order_type" do
    get :show, :id => order_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => order_types(:one).to_param
    assert_response :success
  end

  test "should update order_type" do
    put :update, :id => order_types(:one).to_param, :order_type => { }
    assert_redirected_to order_type_path(assigns(:order_type))
  end

  test "should destroy order_type" do
    assert_difference('OrderType.count', -1) do
      delete :destroy, :id => order_types(:one).to_param
    end

    assert_redirected_to order_types_path
  end
end
