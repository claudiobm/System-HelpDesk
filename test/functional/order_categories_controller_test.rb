require 'test_helper'

class OrderCategoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_category" do
    assert_difference('OrderCategory.count') do
      post :create, :order_category => { }
    end

    assert_redirected_to order_category_path(assigns(:order_category))
  end

  test "should show order_category" do
    get :show, :id => order_categories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => order_categories(:one).to_param
    assert_response :success
  end

  test "should update order_category" do
    put :update, :id => order_categories(:one).to_param, :order_category => { }
    assert_redirected_to order_category_path(assigns(:order_category))
  end

  test "should destroy order_category" do
    assert_difference('OrderCategory.count', -1) do
      delete :destroy, :id => order_categories(:one).to_param
    end

    assert_redirected_to order_categories_path
  end
end
