require 'test_helper'

class HigienesControllerTest < ActionController::TestCase
  setup do
    @higiene = higienes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:higienes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create higiene" do
    assert_difference('Higiene.count') do
      post :create, higiene: { codigo: @higiene.codigo, dosis: @higiene.dosis, elemento: @higiene.elemento, fecha: @higiene.fecha, higiene_manana: @higiene.higiene_manana, higiene_tarde: @higiene.higiene_tarde, material: @higiene.material, sustancia_aseo: @higiene.sustancia_aseo, sustancia_desinfectante: @higiene.sustancia_desinfectante, uso: @higiene.uso }
    end

    assert_redirected_to higiene_path(assigns(:higiene))
  end

  test "should show higiene" do
    get :show, id: @higiene
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @higiene
    assert_response :success
  end

  test "should update higiene" do
    patch :update, id: @higiene, higiene: { codigo: @higiene.codigo, dosis: @higiene.dosis, elemento: @higiene.elemento, fecha: @higiene.fecha, higiene_manana: @higiene.higiene_manana, higiene_tarde: @higiene.higiene_tarde, material: @higiene.material, sustancia_aseo: @higiene.sustancia_aseo, sustancia_desinfectante: @higiene.sustancia_desinfectante, uso: @higiene.uso }
    assert_redirected_to higiene_path(assigns(:higiene))
  end

  test "should destroy higiene" do
    assert_difference('Higiene.count', -1) do
      delete :destroy, id: @higiene
    end

    assert_redirected_to higienes_path
  end
end
