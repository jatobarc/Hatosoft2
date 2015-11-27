require 'test_helper'

class NutricionesControllerTest < ActionController::TestCase
  setup do
    @nutricion = nutriciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nutriciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nutricion" do
    assert_difference('Nutricion.count') do
      post :create, nutricion: { animal_id: @nutricion.animal_id, mes_nutricion: @nutricion.mes_nutricion }
    end

    assert_redirected_to nutricion_path(assigns(:nutricion))
  end

  test "should show nutricion" do
    get :show, id: @nutricion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nutricion
    assert_response :success
  end

  test "should update nutricion" do
    patch :update, id: @nutricion, nutricion: { animal_id: @nutricion.animal_id, mes_nutricion: @nutricion.mes_nutricion }
    assert_redirected_to nutricion_path(assigns(:nutricion))
  end

  test "should destroy nutricion" do
    assert_difference('Nutricion.count', -1) do
      delete :destroy, id: @nutricion
    end

    assert_redirected_to nutriciones_path
  end
end
