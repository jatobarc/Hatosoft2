require 'test_helper'

class AnimalesControllerTest < ActionController::TestCase
  setup do
    @animal = animales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, animal: { codigo: @animal.codigo, fecha_de_nacimiento: @animal.fecha_de_nacimiento, genero: @animal.genero, nombre: @animal.nombre, raza: @animal.raza }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should show animal" do
    get :show, id: @animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animal
    assert_response :success
  end

  test "should update animal" do
    patch :update, id: @animal, animal: { codigo: @animal.codigo, fecha_de_nacimiento: @animal.fecha_de_nacimiento, genero: @animal.genero, nombre: @animal.nombre, raza: @animal.raza }
    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, id: @animal
    end

    assert_redirected_to animales_path
  end
end
