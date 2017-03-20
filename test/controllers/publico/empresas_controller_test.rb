require 'test_helper'

class Publico::EmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publico_empresa = publico_empresas(:one)
  end

  test "should get index" do
    get publico_empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_publico_empresa_url
    assert_response :success
  end

  test "should create publico_empresa" do
    assert_difference('Publico::Empresa.count') do
      post publico_empresas_url, params: { publico_empresa: { descricao: @publico_empresa.descricao, nome: @publico_empresa.nome } }
    end

    assert_redirected_to publico_empresa_url(Publico::Empresa.last)
  end

  test "should show publico_empresa" do
    get publico_empresa_url(@publico_empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_publico_empresa_url(@publico_empresa)
    assert_response :success
  end

  test "should update publico_empresa" do
    patch publico_empresa_url(@publico_empresa), params: { publico_empresa: { descricao: @publico_empresa.descricao, nome: @publico_empresa.nome } }
    assert_redirected_to publico_empresa_url(@publico_empresa)
  end

  test "should destroy publico_empresa" do
    assert_difference('Publico::Empresa.count', -1) do
      delete publico_empresa_url(@publico_empresa)
    end

    assert_redirected_to publico_empresas_url
  end
end
