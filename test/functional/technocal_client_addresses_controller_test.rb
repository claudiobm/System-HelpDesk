require 'test_helper'

class TechnocalClientAddressesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technocal_client_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technocal_client_address" do
    assert_difference('TechnocalClientAddress.count') do
      post :create, :technocal_client_address => { }
    end

    assert_redirected_to technocal_client_address_path(assigns(:technocal_client_address))
  end

  test "should show technocal_client_address" do
    get :show, :id => technocal_client_addresses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => technocal_client_addresses(:one).to_param
    assert_response :success
  end

  test "should update technocal_client_address" do
    put :update, :id => technocal_client_addresses(:one).to_param, :technocal_client_address => { }
    assert_redirected_to technocal_client_address_path(assigns(:technocal_client_address))
  end

  test "should destroy technocal_client_address" do
    assert_difference('TechnocalClientAddress.count', -1) do
      delete :destroy, :id => technocal_client_addresses(:one).to_param
    end

    assert_redirected_to technocal_client_addresses_path
  end
end
