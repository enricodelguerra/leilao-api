require "test_helper"

class ProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produto = produtos(:one)
  end

  test "should get index" do
    get produtos_url, as: :json
    assert_response :success
  end

  test "should create produto" do
    assert_difference("Produto.count") do
      post produtos_url, params: { produto: { descricao: @produto.descricao, imagem: @produto.imagem, nome: @produto.nome, preco: @produto.preco, vendedor_id: @produto.vendedor_id } }, as: :json
    end

    assert_response :created
  end

  test "should show produto" do
    get produto_url(@produto), as: :json
    assert_response :success
  end

  test "should update produto" do
    patch produto_url(@produto), params: { produto: { descricao: @produto.descricao, imagem: @produto.imagem, nome: @produto.nome, preco: @produto.preco, vendedor_id: @produto.vendedor_id } }, as: :json
    assert_response :success
  end

  test "should destroy produto" do
    assert_difference("Produto.count", -1) do
      delete produto_url(@produto), as: :json
    end

    assert_response :no_content
  end
end
