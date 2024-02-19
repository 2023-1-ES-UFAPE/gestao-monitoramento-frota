class Carga < ApplicationRecord
  has_one :rotum

  validates :descricao, presence: true
  validates :peso, presence: true, numericality: { greater_than: 0 }
  validates :volume, presence: true, numericality: { greater_than: 0 }
  validates :valor, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :numero_rastreamento, presence: true, uniqueness: true
  validates :rota_id, presence: true
end
