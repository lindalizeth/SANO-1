require 'test_helper'

class TipoSalidasControllerTest < ActionController::TestCase
  setup do
    @tipo_salida = tipo_salidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_salidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_salida" do
    assert_difference('TipoSalida.count') do
      post :create, tipo_salida: { nombre: @tipo_salida.nombre }
    end

    assert_redirected_to tipo_salida_path(assigns(:tipo_salida))
  end

  test "should show tipo_salida" do
    get :show, id: @tipo_salida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_salida
    assert_response :success
  end

  test "should update tipo_salida" do
    patch :update, id: @tipo_salida, tipo_salida: { nombre: @tipo_salida.nombre }
    assert_redirected_to tipo_salida_path(assigns(:tipo_salida))
  end

  test "should destroy tipo_salida" do
    assert_difference('TipoSalida.count', -1) do
      delete :destroy, id: @tipo_salida
    end

    assert_redirected_to tipo_salidas_path
  end
end
