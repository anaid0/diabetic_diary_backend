require 'test_helper'

class DosesControllerTest < ActionController::TestCase
  setup do
    @dose = doses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doses)
  end

  test "should create dose" do
    assert_difference('Dose.count') do
      post :create, dose: { value: @dose.value }
    end

    assert_response 201
  end

  test "should show dose" do
    get :show, id: @dose
    assert_response :success
  end

  test "should update dose" do
    put :update, id: @dose, dose: { value: @dose.value }
    assert_response 204
  end

  test "should destroy dose" do
    assert_difference('Dose.count', -1) do
      delete :destroy, id: @dose
    end

    assert_response 204
  end
end
