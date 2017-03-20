class Publico::AmbientesController < ApplicationController
  before_action :set_publico_ambiente, only: [:show, :edit, :update, :destroy]

  # GET /publico/ambientes
  # GET /publico/ambientes.json
  def index
    @publico_ambientes = Publico::Ambiente.all
  end

  # GET /publico/ambientes/1
  # GET /publico/ambientes/1.json
  def show
  end

  # GET /publico/ambientes/new
  def new
    @publico_ambiente = Publico::Ambiente.new
  end

  # GET /publico/ambientes/1/edit
  def edit
  end

  # POST /publico/ambientes
  # POST /publico/ambientes.json
  def create
    @publico_ambiente = Publico::Ambiente.new(publico_ambiente_params)

    respond_to do |format|
      if @publico_ambiente.save
        format.html { redirect_to @publico_ambiente, notice: 'Ambiente was successfully created.' }
        format.json { render :show, status: :created, location: @publico_ambiente }
      else
        format.html { render :new }
        format.json { render json: @publico_ambiente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publico/ambientes/1
  # PATCH/PUT /publico/ambientes/1.json
  def update
    respond_to do |format|
      if @publico_ambiente.update(publico_ambiente_params)
        format.html { redirect_to @publico_ambiente, notice: 'Ambiente was successfully updated.' }
        format.json { render :show, status: :ok, location: @publico_ambiente }
      else
        format.html { render :edit }
        format.json { render json: @publico_ambiente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publico/ambientes/1
  # DELETE /publico/ambientes/1.json
  def destroy
    @publico_ambiente.destroy
    respond_to do |format|
      format.html { redirect_to publico_ambientes_url, notice: 'Ambiente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publico_ambiente
      @publico_ambiente = Publico::Ambiente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publico_ambiente_params
      params.require(:publico_ambiente).permit(:nome, :descricao)
    end
end
