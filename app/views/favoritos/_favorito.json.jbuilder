json.extract! favorito, :id, :cliente_id, :favoritado_id, :tipo_favoritado, :checked, :created_at, :updated_at
json.url favorito_url(favorito, format: :json)