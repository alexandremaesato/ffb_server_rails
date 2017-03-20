require 'test_helper'

class Publico::ProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publico_produto = publico_produtos(:one)
  end

  test "should get index" do
    get publico_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_publico_produto_url
    assert_response :success
  end

  test "should create publico_produto" do
    assert_difference('Publico::Produto.count') do
      post publico_produtos_url, params: { publico_produto: { descricao: @publico_produto.descricao, nome: @publico_produto.nome } }
    end

    assert_redirected_to publico_produto_url(Publico::Produto.last)
  end

  test "should show publico_produto" do
    get publico_produto_url(@publico_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_publico_produto_url(@publico_produto)
    assert_response :success
  end

  test "should update publico_produto" do
    patch publico_produto_url(@publico_produto), params: { publico_produto: { descricao: @publico_produto.descricao, nome: @publico_produto.nome } }
    assert_redirected_to publico_produto_url(@publico_produto)
  end

  test "should destroy publico_produto" do
    assert_difference('Publico::Produto.count', -1) do
      delete publico_produto_url(@publico_produto)
    end

    assert_redirected_to publico_produtos_url
  end
end
