require 'test_helper'

class ParcelasControllerTest < ActionController::TestCase
  setup do
    @parcela = parcelas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parcelas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parcela" do
    assert_difference('Parcela.count') do
      post :create, parcela: { area: @parcela.area, codigo: @parcela.codigo, tipo_pasto: @parcela.tipo_pasto }
    end

    assert_redirected_to parcela_path(assigns(:parcela))
  end

  test "should show parcela" do
    get :show, id: @parcela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parcela
    assert_response :success
  end

  test "should update parcela" do
    patch :update, id: @parcela, parcela: { area: @parcela.area, codigo: @parcela.codigo, tipo_pasto: @parcela.tipo_pasto }
    assert_redirected_to parcela_path(assigns(:parcela))
  end

  test "should destroy parcela" do
    assert_difference('Parcela.count', -1) do
      delete :destroy, id: @parcela
    end

    assert_redirected_to parcelas_path
  end
end
