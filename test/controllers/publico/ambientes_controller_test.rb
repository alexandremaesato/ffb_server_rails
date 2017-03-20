require 'test_helper'

class Publico::AmbientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publico_ambiente = publico_ambientes(:one)
  end

  test "should get index" do
    get publico_ambientes_url
    assert_response :success
  end

  test "should get new" do
    get new_publico_ambiente_url
    assert_response :success
  end

  test "should create publico_ambiente" do
    assert_difference('Publico::Ambiente.count') do
      post publico_ambientes_url, params: { publico_ambiente: { descricao: @publico_ambiente.descricao, nome: @publico_ambiente.nome } }
    end

    assert_redirected_to publico_ambiente_url(Publico::Ambiente.last)
  end

  test "should show publico_ambiente" do
    get publico_ambiente_url(@publico_ambiente)
    assert_response :success
  end

  test "should get edit" do
    get edit_publico_ambiente_url(@publico_ambiente)
    assert_response :success
  end

  test "should update publico_ambiente" do
    patch publico_ambiente_url(@publico_ambiente), params: { publico_ambiente: { descricao: @publico_ambiente.descricao, nome: @publico_ambiente.nome } }
    assert_redirected_to publico_ambiente_url(@publico_ambiente)
  end

  test "should destroy publico_ambiente" do
    assert_difference('Publico::Ambiente.count', -1) do
      delete publico_ambiente_url(@publico_ambiente)
    end

    assert_redirected_to publico_ambientes_url
  end
end
