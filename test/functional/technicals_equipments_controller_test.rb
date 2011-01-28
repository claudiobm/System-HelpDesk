require 'test_helper'

class TechnicalsEquipmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technicals_equipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technicals_equipment" do
    assert_difference('TechnicalsEquipment.count') do
      post :create, :technicals_equipment => { }
    end

    assert_redirected_to technicals_equipment_path(assigns(:technicals_equipment))
  end

  test "should show technicals_equipment" do
    get :show, :id => technicals_equipments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => technicals_equipments(:one).to_param
    assert_response :success
  end

  test "should update technicals_equipment" do
    put :update, :id => technicals_equipments(:one).to_param, :technicals_equipment => { }
    assert_redirected_to technicals_equipment_path(assigns(:technicals_equipment))
  end

  test "should destroy technicals_equipment" do
    assert_difference('TechnicalsEquipment.count', -1) do
      delete :destroy, :id => technicals_equipments(:one).to_param
    end

    assert_redirected_to technicals_equipments_path
  end
end
