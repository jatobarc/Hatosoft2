require 'test_helper'

class PartosControllerTest < ActionController::TestCase
  setup do
    @parto = partos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parto" do
    assert_difference('Parto.count') do
      post :create, parto: { animal_id: @parto.animal_id, codigo_nacido: @parto.codigo_nacido, fecha_parto: @parto.fecha_parto }
    end

    assert_redirected_to parto_path(assigns(:parto))
  end

  test "should show parto" do
    get :show, id: @parto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parto
    assert_response :success
  end

  test "should update parto" do
    patch :update, id: @parto, parto: { animal_id: @parto.animal_id, codigo_nacido: @parto.codigo_nacido, fecha_parto: @parto.fecha_parto }
    assert_redirected_to parto_path(assigns(:parto))
  end

  test "should destroy parto" do
    assert_difference('Parto.count', -1) do
      delete :destroy, id: @parto
    end

    assert_redirected_to partos_path
  end
end
