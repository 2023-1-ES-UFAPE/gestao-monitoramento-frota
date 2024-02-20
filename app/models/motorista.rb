class Motorista < ApplicationRecord
  belongs_to :caminhao
  has_many :rotums

  validates :nome, presence: true, length: { minimum: 5, maximum: 50 }
  validates :cpf, presence: true, length: { is: 11}, numericality: true
  validates :cnh, presence: true, length: { is: 11}, numericality: true
  validates :telefone, presence: true, length: { is: 11}, numericality: true
  validate :valida_data_nascimento
  validates :caminhao_id, presence: true

  def valida_data_nascimento
    if data_nascimento.blank? || data_nascimento > (Date.today - 18.years)
      errors.add(:data_nascimento, ", Motorista deve ser maior de idade")
    end
  end
end
