require "test_helper"

class LancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lance = lances(:one)
  end

  test "should get index" do
    get lances_url, as: :json
    assert_response :success
  end

  test "should create lance" do
    assert_difference("Lance.count") do
      post lances_url, params: { lance: { leilao_id: @lance.leilao_id, usuario_id: @lance.usuario_id, valor: @lance.valor } }, as: :json
    end

    assert_response :created
  end

  test "should show lance" do
    get lance_url(@lance), as: :json
    assert_response :success
  end

  test "should update lance" do
    patch lance_url(@lance), params: { lance: { leilao_id: @lance.leilao_id, usuario_id: @lance.usuario_id, valor: @lance.valor } }, as: :json
    assert_response :success
  end

  test "should destroy lance" do
    assert_difference("Lance.count", -1) do
      delete lance_url(@lance), as: :json
    end

    assert_response :no_content
  end
end
