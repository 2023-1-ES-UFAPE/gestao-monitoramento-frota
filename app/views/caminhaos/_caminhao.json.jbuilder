json.extract! caminhao, :id, :modelo, :placa, :ano, :capacidade, :status, :chassi, :data_ultima_inspecao, :created_at, :updated_at
json.url caminhao_url(caminhao, format: :json)
