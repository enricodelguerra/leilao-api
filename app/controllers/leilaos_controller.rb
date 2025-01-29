class LeilaosController < ApplicationController
  before_action :set_leilao, only: %i[ show update destroy ]

  # GET /leilaos
  def index
    @leilaos = Leilao.all

    render json: @leilaos
  end

  # GET /leilaos/1
  def show
    render json: @leilao
  end

  # POST /leilaos
  def create
    @leilao = Leilao.new(leilao_params)

    if @leilao.save
      render json: @leilao, status: :created, location: @leilao
    else
      render json: @leilao.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /leilaos/1
  def update
    if @leilao.update(leilao_params)
      render json: @leilao
    else
      render json: @leilao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leilaos/1
  def destroy
    @leilao.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leilao
      @leilao = Leilao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def leilao_params
      params.expect(leilao: [ :produto_id, :preco_minimo, :lance_inicial, :vendendor_id, :comprador_id ])
    end
end
