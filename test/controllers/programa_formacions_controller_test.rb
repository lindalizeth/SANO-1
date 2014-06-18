require 'test_helper'

class ProgramaFormacionsControllerTest < ActionController::TestCase
  setup do
    @programa_formacion = programa_formacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programa_formacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programa_formacion" do
    assert_difference('ProgramaFormacion.count') do
      post :create, programa_formacion: { nombre: @programa_formacion.nombre }
    end

    assert_redirected_to programa_formacion_path(assigns(:programa_formacion))
  end

  test "should show programa_formacion" do
    get :show, id: @programa_formacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programa_formacion
    assert_response :success
  end

  test "should update programa_formacion" do
    patch :update, id: @programa_formacion, programa_formacion: { nombre: @programa_formacion.nombre }
    assert_redirected_to programa_formacion_path(assigns(:programa_formacion))
  end

  test "should destroy programa_formacion" do
    assert_difference('ProgramaFormacion.count', -1) do
      delete :destroy, id: @programa_formacion
    end

    assert_redirected_to programa_formacions_path
  end
end
