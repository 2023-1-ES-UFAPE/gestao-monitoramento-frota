class Rotum < ApplicationRecord
  belongs_to :caminhao

  belongs_to :endereco_partida, class_name: 'Endereco', foreign_key: 'endereco_partida_id'
  belongs_to :endereco_chegada, class_name: 'Endereco', foreign_key: 'endereco_chegada_id'
  # has_one :parada, dependent: :destroy
  validates :endereco_partida_id, presence: true
  validates :endereco_chegada_id, presence: true
  validates :caminhao_id, presence: true
  validates :observacoes, length: { maximum: 200 }
  validate :valida_data_de_partida
  validate :valida_data_de_chegada

  def valida_data_de_partida
    unless data_de_partida.present?
      errors.add(:data_de_partida, "é necessário informar data de partida")
    end
  end

  def valida_data_de_chegada
    if data_de_chegada.present? && data_de_chegada < data_de_partida
      errors.add(:data_de_chegada, "deve ser maior que a data de partida")
    end
  end
end
