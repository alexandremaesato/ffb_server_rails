json.extract! publico_produto, :id, :nome, :descricao,:fotos, :created_at, :updated_at
json.url publico_produto_url(publico_produto, format: :json)