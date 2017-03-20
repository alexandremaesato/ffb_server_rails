json.extract! avaliacao, :id, :avaliado_id, :tipo_avaliado, :comentario, :cliente_id, :created_at, :updated_at
json.url avaliacao_url(avaliacao, format: :json)