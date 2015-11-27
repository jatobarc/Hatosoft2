require 'test_helper'

class ProduccionesControllerTest < ActionController::TestCase
  setup do
    @produccion = producciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produccion" do
    assert_difference('Produccion.count') do
      post :create, produccion: { animal_id: @produccion.animal_id, mes_produccion: @produccion.mes_produccion }
    end

    assert_redirected_to produccion_path(assigns(:produccion))
  end

  test "should show produccion" do
    get :show, id: @produccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produccion
    assert_response :success
  end

  test "should update produccion" do
    patch :update, id: @produccion, produccion: { animal_id: @produccion.animal_id, mes_produccion: @produccion.mes_produccion }
    assert_redirected_to produccion_path(assigns(:produccion))
  end

  test "should destroy produccion" do
    assert_difference('Produccion.count', -1) do
      delete :destroy, id: @produccion
    end

    assert_redirected_to producciones_path
  end
end
