class Publico::EmpresasController < ApplicationController
  before_action :set_publico_empresa, only: [:show, :edit, :update, :destroy]

  # GET /publico/empresas
  # GET /publico/empresas.json
  def index
    @publico_empresas = Publico::Empresa.all
  end

  # GET /publico/empresas/1
  # GET /publico/empresas/1.json
  def show
  end

  # GET /publico/empresas/new
  def new
    @publico_empresa = Publico::Empresa.new
  end

  # GET /publico/empresas/1/edit
  def edit
  end

  # POST /publico/empresas
  # POST /publico/empresas.json
  def create
    @publico_empresa = Publico::Empresa.new(publico_empresa_params)

    respond_to do |format|
      if @publico_empresa.save
        format.html { redirect_to @publico_empresa, notice: 'Empresa was successfully created.' }
        format.json { render :show, status: :created, location: @publico_empresa }
      else
        format.html { render :new }
        format.json { render json: @publico_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publico/empresas/1
  # PATCH/PUT /publico/empresas/1.json
  def update
    respond_to do |format|
      if @publico_empresa.update(publico_empresa_params)
        format.html { redirect_to @publico_empresa, notice: 'Empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @publico_empresa }
      else
        format.html { render :edit }
        format.json { render json: @publico_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publico/empresas/1
  # DELETE /publico/empresas/1.json
  def destroy
    @publico_empresa.destroy
    respond_to do |format|
      format.html { redirect_to publico_empresas_url, notice: 'Empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publico_empresa
      @publico_empresa = Publico::Empresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publico_empresa_params
      params.require(:publico_empresa).permit(:nome, :descricao)
    end
end
