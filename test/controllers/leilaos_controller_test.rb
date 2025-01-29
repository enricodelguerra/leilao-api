require "test_helper"

class LeilaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leilao = leilaos(:one)
  end

  test "should get index" do
    get leilaos_url, as: :json
    assert_response :success
  end

  test "should create leilao" do
    assert_difference("Leilao.count") do
      post leilaos_url, params: { leilao: { comprador_id: @leilao.comprador_id, lance_inicial: @leilao.lance_inicial, preco_minimo: @leilao.preco_minimo, produto_id: @leilao.produto_id, vendendor_id: @leilao.vendendor_id } }, as: :json
    end

    assert_response :created
  end

  test "should show leilao" do
    get leilao_url(@leilao), as: :json
    assert_response :success
  end

  test "should update leilao" do
    patch leilao_url(@leilao), params: { leilao: { comprador_id: @leilao.comprador_id, lance_inicial: @leilao.lance_inicial, preco_minimo: @leilao.preco_minimo, produto_id: @leilao.produto_id, vendendor_id: @leilao.vendendor_id } }, as: :json
    assert_response :success
  end

  test "should destroy leilao" do
    assert_difference("Leilao.count", -1) do
      delete leilao_url(@leilao), as: :json
    end

    assert_response :no_content
  end
end
