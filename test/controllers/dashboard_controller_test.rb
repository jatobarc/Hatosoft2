require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get registro_global" do
    get :registro_global
    assert_response :success
  end

  test "should get produccion_global" do
    get :produccion_global
    assert_response :success
  end

  test "should get nutricion_global" do
    get :nutricion_global
    assert_response :success
  end

end
