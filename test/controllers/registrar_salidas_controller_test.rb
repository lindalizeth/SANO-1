require 'test_helper'

class RegistrarSalidasControllerTest < ActionController::TestCase
  setup do
    @registrar_salida = registrar_salidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrar_salidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registrar_salida" do
    assert_difference('RegistrarSalida.count') do
      post :create, registrar_salida: { FuncionarioACargo: @registrar_salida.FuncionarioACargo, Otro: @registrar_salida.Otro, Recreativo: @registrar_salida.Recreativo, Selccione_fecha: @registrar_salida.Selccione_fecha, digacual: @registrar_salida.digacual, fichaGrupo: @registrar_salida.fichaGrupo, lugarSalida: @registrar_salida.lugarSalida, tipoSalida_pedagogico: @registrar_salida.tipoSalida_pedagogico }
    end

    assert_redirected_to registrar_salida_path(assigns(:registrar_salida))
  end

  test "should show registrar_salida" do
    get :show, id: @registrar_salida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registrar_salida
    assert_response :success
  end

  test "should update registrar_salida" do
    patch :update, id: @registrar_salida, registrar_salida: { FuncionarioACargo: @registrar_salida.FuncionarioACargo, Otro: @registrar_salida.Otro, Recreativo: @registrar_salida.Recreativo, Selccione_fecha: @registrar_salida.Selccione_fecha, digacual: @registrar_salida.digacual, fichaGrupo: @registrar_salida.fichaGrupo, lugarSalida: @registrar_salida.lugarSalida, tipoSalida_pedagogico: @registrar_salida.tipoSalida_pedagogico }
    assert_redirected_to registrar_salida_path(assigns(:registrar_salida))
  end

  test "should destroy registrar_salida" do
    assert_difference('RegistrarSalida.count', -1) do
      delete :destroy, id: @registrar_salida
    end

    assert_redirected_to registrar_salidas_path
  end
end
