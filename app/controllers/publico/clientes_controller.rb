class Publico::ClientesController < ApplicationController
  before_action :set_publico_cliente, only: [:show, :edit, :update, :destroy]

  # GET /publico/clientes
  # GET /publico/clientes.json
  def index
    @publico_clientes = Publico::Cliente.all
  end

  # GET /publico/clientes/1
  # GET /publico/clientes/1.json
  def show
  end

  # GET /publico/clientes/new
  def new
    @publico_cliente = Publico::Cliente.new
  end

  # GET /publico/clientes/1/edit
  def edit
  end

  # POST /publico/clientes
  # POST /publico/clientes.json
  def create
    @publico_cliente = Publico::Cliente.new(publico_cliente_params)

    respond_to do |format|
      if @publico_cliente.save
        format.html { redirect_to @publico_cliente, notice: 'Cliente was successfully created.' }
        format.json { render :show, status: :created, location: @publico_cliente }
      else
        format.html { render :new }
        format.json { render json: @publico_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publico/clientes/1
  # PATCH/PUT /publico/clientes/1.json
  def update
    respond_to do |format|
      if @publico_cliente.update(publico_cliente_params)
        format.html { redirect_to @publico_cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @publico_cliente }
      else
        format.html { render :edit }
        format.json { render json: @publico_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publico/clientes/1
  # DELETE /publico/clientes/1.json
  def destroy
    @publico_cliente.destroy
    respond_to do |format|
      format.html { redirect_to publico_clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publico_cliente
      @publico_cliente = Publico::Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publico_cliente_params
      params.require(:publico_cliente).permit(:nome, :descricao, :aniversario)
    end
end
