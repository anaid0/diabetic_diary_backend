require 'test_helper'

class MealsControllerTest < ActionController::TestCase
  setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meals)
  end

  test "should create meal" do
    assert_difference('Meal.count') do
      post :create, meal: { carbs: @meal.carbs, kcal: @meal.kcal }
    end

    assert_response 201
  end

  test "should show meal" do
    get :show, id: @meal
    assert_response :success
  end

  test "should update meal" do
    put :update, id: @meal, meal: { carbs: @meal.carbs, kcal: @meal.kcal }
    assert_response 204
  end

  test "should destroy meal" do
    assert_difference('Meal.count', -1) do
      delete :destroy, id: @meal
    end

    assert_response 204
  end
end
