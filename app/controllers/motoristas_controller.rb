class MotoristasController < ApplicationController
  before_action :set_motorista, only: %i[ show edit update destroy ]

  # GET /motoristas or /motoristas.json
  def index
    @motoristas = Motorista.all
  end

  # GET /motoristas/1 or /motoristas/1.json
  def show
  end

  # GET /motoristas/new
  def new
    @motorista = Motorista.new
  end

  # GET /motoristas/1/edit
  def edit
  end

  # POST /motoristas or /motoristas.json
  def create
    @motorista = Motorista.new(motorista_params)

    respond_to do |format|
      if @motorista.save
        motorista_success(format, :created, "created")
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @motorista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motoristas/1 or /motoristas/1.json
  def update
    respond_to do |format|
      if @motorista.update(motorista_params)
        motorista_success(format, :ok, "updated")
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @motorista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motoristas/1 or /motoristas/1.json
  def destroy
    @motorista.destroy

    respond_to do |format|
      format.html { redirect_to motoristas_url, notice: "Motorista was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search_rotas
    if params[:cpf].blank?
      @error = "Cpf/Nome nao pode esta vazio"
    else
      motorista_cpf = Motorista.where(cpf: params[:cpf])
      motorista_nome = Motorista.where(nome: params[:cpf])

      if motorista_cpf.empty? and motorista_nome.empty?
        @error = "Sem motoristas com esse nome/cpf"
      end
    end

    if !@error.to_s.empty?
      respond_to do |format|
        format.html { render :search}
      end
    else

      if motorista_cpf.empty?
        puts "pesquisou por nome"
        @motorista = Motorista.find_by(nome: params[:cpf])
      else
        puts "pesquisou por cpf"
        @motorista = Motorista.find_by(cpf: params[:cpf])
      end

      @rotas = Rotum.joins(caminhao: :motorista).where(motoristas: { nome: @motorista.nome })
      print(@rotas.inspect)
      respond_to do |format|
        format.html { render :show_result}
      end
    end
  end

  private

  def motorista_success(format, status, method)
    format.html { redirect_to motorista_url(@motorista), notice: "Motorista was successfully #{method}." }
    format.json { render :show, status: status, location: @motorista }
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_motorista
    @motorista = Motorista.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def motorista_params
    params.require(:motorista).permit(:nome, :cpf, :cnh, :telefone, :data_nascimento, :caminhao_id)
  end
end
