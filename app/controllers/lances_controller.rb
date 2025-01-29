class LancesController < ApplicationController
  before_action :set_lance, only: %i[ show update destroy ]

  # GET /lances
  def index
    @lances = Lance.all

    render json: @lances
  end

  # GET /lances/1
  def show
    render json: @lance
  end

  # POST /lances
  def create
    @lance = Lance.new(lance_params)

    if @lance.save
      render json: @lance, status: :created, location: @lance
    else
      render json: @lance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lances/1
  def update
    if @lance.update(lance_params)
      render json: @lance
    else
      render json: @lance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lances/1
  def destroy
    @lance.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lance
      @lance = Lance.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def lance_params
      params.expect(lance: [ :usuario_id, :valor, :leilao_id ])
    end
end
