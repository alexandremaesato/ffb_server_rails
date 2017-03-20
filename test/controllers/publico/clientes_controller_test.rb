require 'test_helper'

class Publico::ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publico_cliente = publico_clientes(:one)
  end

  test "should get index" do
    get publico_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_publico_cliente_url
    assert_response :success
  end

  test "should create publico_cliente" do
    assert_difference('Publico::Cliente.count') do
      post publico_clientes_url, params: { publico_cliente: { aniversario: @publico_cliente.aniversario, descricao: @publico_cliente.descricao, nome: @publico_cliente.nome } }
    end

    assert_redirected_to publico_cliente_url(Publico::Cliente.last)
  end

  test "should show publico_cliente" do
    get publico_cliente_url(@publico_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_publico_cliente_url(@publico_cliente)
    assert_response :success
  end

  test "should update publico_cliente" do
    patch publico_cliente_url(@publico_cliente), params: { publico_cliente: { aniversario: @publico_cliente.aniversario, descricao: @publico_cliente.descricao, nome: @publico_cliente.nome } }
    assert_redirected_to publico_cliente_url(@publico_cliente)
  end

  test "should destroy publico_cliente" do
    assert_difference('Publico::Cliente.count', -1) do
      delete publico_cliente_url(@publico_cliente)
    end

    assert_redirected_to publico_clientes_url
  end
end
