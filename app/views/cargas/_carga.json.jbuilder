json.extract! carga, :id, :descricao, :peso, :volume, :valor, :numero_rastreamento, :created_at, :updated_at
json.url carga_url(carga, format: :json)
