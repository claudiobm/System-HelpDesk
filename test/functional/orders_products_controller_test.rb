require 'test_helper'

class OrdersProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orders_product" do
    assert_difference('OrdersProduct.count') do
      post :create, :orders_product => { }
    end

    assert_redirected_to orders_product_path(assigns(:orders_product))
  end

  test "should show orders_product" do
    get :show, :id => orders_products(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => orders_products(:one).to_param
    assert_response :success
  end

  test "should update orders_product" do
    put :update, :id => orders_products(:one).to_param, :orders_product => { }
    assert_redirected_to orders_product_path(assigns(:orders_product))
  end

  test "should destroy orders_product" do
    assert_difference('OrdersProduct.count', -1) do
      delete :destroy, :id => orders_products(:one).to_param
    end

    assert_redirected_to orders_products_path
  end
end
