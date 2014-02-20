require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entries)
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post :create, entry: { dt: @entry.dt, user_id: @entry.user_id }
    end

    assert_response 201
  end

  test "should show entry" do
    get :show, id: @entry
    assert_response :success
  end

  test "should update entry" do
    put :update, id: @entry, entry: { dt: @entry.dt, user_id: @entry.user_id }
    assert_response 204
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete :destroy, id: @entry
    end

    assert_response 204
  end
end
