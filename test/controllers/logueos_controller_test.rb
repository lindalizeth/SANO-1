require 'test_helper'

class LogueosControllerTest < ActionController::TestCase
  setup do
    @logueo = logueos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logueos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logueo" do
    assert_difference('Logueo.count') do
      post :create, logueo: { clave: @logueo.clave, usuario: @logueo.usuario }
    end

    assert_redirected_to logueo_path(assigns(:logueo))
  end

  test "should show logueo" do
    get :show, id: @logueo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logueo
    assert_response :success
  end

  test "should update logueo" do
    patch :update, id: @logueo, logueo: { clave: @logueo.clave, usuario: @logueo.usuario }
    assert_redirected_to logueo_path(assigns(:logueo))
  end

  test "should destroy logueo" do
    assert_difference('Logueo.count', -1) do
      delete :destroy, id: @logueo
    end

    assert_redirected_to logueos_path
  end
end
