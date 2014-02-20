require 'test_helper'

class InsulinTypesControllerTest < ActionController::TestCase
  setup do
    @insulin_type = insulin_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insulin_types)
  end

  test "should create insulin_type" do
    assert_difference('InsulinType.count') do
      post :create, insulin_type: { acting: @insulin_type.acting, name: @insulin_type.name, type: @insulin_type.type }
    end

    assert_response 201
  end

  test "should show insulin_type" do
    get :show, id: @insulin_type
    assert_response :success
  end

  test "should update insulin_type" do
    put :update, id: @insulin_type, insulin_type: { acting: @insulin_type.acting, name: @insulin_type.name, type: @insulin_type.type }
    assert_response 204
  end

  test "should destroy insulin_type" do
    assert_difference('InsulinType.count', -1) do
      delete :destroy, id: @insulin_type
    end

    assert_response 204
  end
end
