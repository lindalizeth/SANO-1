require 'test_helper'

class FuncionariosControllerTest < ActionController::TestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funcionarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference('Funcionario.count') do
      post :create, funcionario: { EPS: @funcionario.EPS, IPS: @funcionario.IPS, apellidos: @funcionario.apellidos, centro_id: @funcionario.centro_id, codigo: @funcionario.codigo, indentificacion: @funcionario.indentificacion, mail: @funcionario.mail, nombres: @funcionario.nombres, telefono: @funcionario.telefono, tipodoc_id: @funcionario.tipodoc_id }
    end

    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should show funcionario" do
    get :show, id: @funcionario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funcionario
    assert_response :success
  end

  test "should update funcionario" do
    patch :update, id: @funcionario, funcionario: { EPS: @funcionario.EPS, IPS: @funcionario.IPS, apellidos: @funcionario.apellidos, centro_id: @funcionario.centro_id, codigo: @funcionario.codigo, indentificacion: @funcionario.indentificacion, mail: @funcionario.mail, nombres: @funcionario.nombres, telefono: @funcionario.telefono, tipodoc_id: @funcionario.tipodoc_id }
    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  test "should destroy funcionario" do
    assert_difference('Funcionario.count', -1) do
      delete :destroy, id: @funcionario
    end

    assert_redirected_to funcionarios_path
  end
end
