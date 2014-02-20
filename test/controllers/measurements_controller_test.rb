require 'test_helper'

class MeasurementsControllerTest < ActionController::TestCase
  setup do
    @measurement = measurements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measurements)
  end

  test "should create measurement" do
    assert_difference('Measurement.count') do
      post :create, measurement: { value: @measurement.value }
    end

    assert_response 201
  end

  test "should show measurement" do
    get :show, id: @measurement
    assert_response :success
  end

  test "should update measurement" do
    put :update, id: @measurement, measurement: { value: @measurement.value }
    assert_response 204
  end

  test "should destroy measurement" do
    assert_difference('Measurement.count', -1) do
      delete :destroy, id: @measurement
    end

    assert_response 204
  end
end
