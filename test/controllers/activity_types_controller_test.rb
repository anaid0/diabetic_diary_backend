require 'test_helper'

class ActivityTypesControllerTest < ActionController::TestCase
  setup do
    @activity_type = activity_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_types)
  end

  test "should create activity_type" do
    assert_difference('ActivityType.count') do
      post :create, activity_type: { kcal_per_hour: @activity_type.kcal_per_hour, name: @activity_type.name }
    end

    assert_response 201
  end

  test "should show activity_type" do
    get :show, id: @activity_type
    assert_response :success
  end

  test "should update activity_type" do
    put :update, id: @activity_type, activity_type: { kcal_per_hour: @activity_type.kcal_per_hour, name: @activity_type.name }
    assert_response 204
  end

  test "should destroy activity_type" do
    assert_difference('ActivityType.count', -1) do
      delete :destroy, id: @activity_type
    end

    assert_response 204
  end
end
