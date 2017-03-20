class AddFotosToPublicoProdutos < ActiveRecord::Migration[5.0]
  def change
    add_column :publico_produtos, :fotos, :json
  end
end
