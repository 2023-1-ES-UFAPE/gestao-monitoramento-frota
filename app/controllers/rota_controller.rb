class RotaController < ApplicationController
  before_action :set_rotum, only: %i[ show edit update destroy ]

  # GET /rota or /rota.json
  def index
    @rota = Rotum.all
  end

  # GET /rota/1 or /rota/1.json
  def show
  end

  # GET /rota/new
  def new
    @rotum = Rotum.new
  end

  # GET /rota/1/edit
  def edit
  end

  # POST /rota or /rota.json
  def create
    @rotum = Rotum.new(rotum_params)


    respond_to do |format|
      if @rotum.save
        format.html { redirect_to rotum_url(@rotum), notice: "Rotum was successfully created." }
        format.json { render :show, status: :created, location: @rotum }
      else
        Rails.logger.debug @rotum.errors.full_messages
        Rails.logger.debug "tstee------------------------------"
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rota/1 or /rota/1.json
  def update
    respond_to do |format|
      if @rotum.update(rotum_params)
        format.html { redirect_to rotum_url(@rotum), notice: "Rotum was successfully updated." }
        format.json { render :show, status: :ok, location: @rotum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rota/1 or /rota/1.json
  def destroy
    @rotum.destroy

    respond_to do |format|
      format.html { redirect_to rota_url, notice: "Rotum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search_rota
    if params[:placa].blank?
      @error = "Placa may not be empty"
    else
      caminhao = Caminhao.where(placa: params[:placa])

      if caminhao.empty?
        @error = "Placa may references a caminhao"
      end
    end

    if !@error.to_s.empty?
      respond_to do |format|
        format.html { render :search}
      end
    else
      @rota = Rotum.joins(:caminhao).where(caminhao:{placa:params[:placa]})
      @placa = params[:placa]
      respond_to do |format|
        format.html { render :show_result}
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rotum
      @rotum = Rotum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rotum_params
      params.require(:rotum).permit(:endereco_partida_id, :endereco_chegada_id, :data_de_partida, :data_de_chegada, :observacoes, :caminhao_id)
    end
end
