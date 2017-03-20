class Publico::ProdutosController < ApplicationController
  before_action :set_publico_produto, only: [:show, :edit, :update, :destroy]
   skip_before_filter :verify_authenticity_token 

  # GET /publico/produtos
  # GET /publico/produtos.json
  def index
    @publico_produtos = Publico::Produto.all
  end

  # GET /publico/produtos/1
  # GET /publico/produtos/1.json
  def show
  end

  # GET /publico/produtos/new
  def new
    @publico_produto = Publico::Produto.new
  end

  # GET /publico/produtos/1/edit
  def edit
  end

  # POST /publico/produtos
  # POST /publico/produtos.json
  def create
    @publico_produto = Publico::Produto.new(publico_produto_params)

    respond_to do |format|
      if @publico_produto.save
        format.html { redirect_to @publico_produto, notice: 'Produto was successfully created.' }
        format.json { render :show, status: :created, location: @publico_produto }
      else
        format.html { render :new }
        format.json { render json: @publico_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publico/produtos/1
  # PATCH/PUT /publico/produtos/1.json
  def update
    respond_to do |format|
      if @publico_produto.update(publico_produto_params)
        format.html { redirect_to @publico_produto, notice: 'Produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @publico_produto }
      else
        format.html { render :edit }
        format.json { render json: @publico_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publico/produtos/1
  # DELETE /publico/produtos/1.json
  def destroy
    @publico_produto.destroy
    respond_to do |format|
      format.html { redirect_to publico_produtos_url, notice: 'Produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publico_produto
      @publico_produto = Publico::Produto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publico_produto_params
      params.require(:publico_produto).permit(:nome, :descricao, {fotos: []})
    end
end
