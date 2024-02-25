class CargasController < ApplicationController
  before_action :set_carga, only: %i[ show edit update destroy ]

  # GET /cargas or /cargas.json
  def index
    @cargas = Carga.all
  end

  # GET /cargas/1 or /cargas/1.json
  def show
  end

  # GET /cargas/new
  def new
    @carga_atual = Carga.new
  end

  # GET /cargas/1/edit
  def edit
  end

  # POST /cargas or /cargas.json
  def create
    @carga_atual = Carga.new(carga_params)

    respond_to do |format|
      if @carga_atual.save
        carga_success(format, :created, "created")
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @carga_atual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cargas/1 or /cargas/1.json
  def update
    respond_to do |format|
      if @carga_atual.update(carga_params)
        carga_success(format, :ok, "updated")
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @carga_atual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cargas/1 or /cargas/1.json
  def destroy
    @carga_atual.destroy

    respond_to do |format|
      format.html { redirect_to cargas_url, notice: "Carga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def carga_success(format, status, method)
    format.html { redirect_to carga_url(@carga_atual), notice: "Carga was successfully #{method}." }
    format.json { render :show, status: status, location: @carga_atual }
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_carga
    @carga_atual = Carga.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def carga_params
    params.require(:carga).permit(:descricao, :peso, :volume, :valor, :numero_rastreamento, :rota_id)
  end
end
