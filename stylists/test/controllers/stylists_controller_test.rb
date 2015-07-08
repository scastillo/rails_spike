require 'test_helper'

class StylistsControllerTest < ActionController::TestCase
  setup do
    @stylist = stylists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stylists)
  end

  test "should create stylist" do
    assert_difference('Stylist.count') do
      post :create, stylist: { email: @stylist.email, name: @stylist.name, password: @stylist.password }
    end

    assert_response 201
  end

  test "should show stylist" do
    get :show, id: @stylist
    assert_response :success
  end

  test "should update stylist" do
    put :update, id: @stylist, stylist: { email: @stylist.email, name: @stylist.name, password: @stylist.password }
    assert_response 204
  end

  test "should destroy stylist" do
    assert_difference('Stylist.count', -1) do
      delete :destroy, id: @stylist
    end

    assert_response 204
  end
end
