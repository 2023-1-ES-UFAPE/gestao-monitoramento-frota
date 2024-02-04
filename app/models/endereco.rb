class Endereco < ApplicationRecord
  # belongs_to :rotum
  #has_many :paradas, dependent: :destroy
  has_many :rotum, dependent: :nullify
  validates :cidade, presence: true, length: { minimum: 5, maximum: 50 }
  validates :cep, presence: true, format: { with: /\A\d{8}\z/, message: "deve conter 8 dígitos numéricos" }
end
