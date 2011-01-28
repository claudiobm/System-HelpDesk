require 'test_helper'

class AccountDepartmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_department" do
    assert_difference('AccountDepartment.count') do
      post :create, :account_department => { }
    end

    assert_redirected_to account_department_path(assigns(:account_department))
  end

  test "should show account_department" do
    get :show, :id => account_departments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => account_departments(:one).to_param
    assert_response :success
  end

  test "should update account_department" do
    put :update, :id => account_departments(:one).to_param, :account_department => { }
    assert_redirected_to account_department_path(assigns(:account_department))
  end

  test "should destroy account_department" do
    assert_difference('AccountDepartment.count', -1) do
      delete :destroy, :id => account_departments(:one).to_param
    end

    assert_redirected_to account_departments_path
  end
end
