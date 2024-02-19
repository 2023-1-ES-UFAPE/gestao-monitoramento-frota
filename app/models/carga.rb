class Carga < ApplicationRecord
  belongs_to :caminhao
  has_many :rotum, through: :caminhao

  validates :descricao, presence: true
  validates :peso, presence: true, numericality: { greater_than: 0 }
  validates :volume, presence: true, numericality: { greater_than: 0 }
  validates :valor, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :numero_rastreamento, presence: true, uniqueness: true
end
