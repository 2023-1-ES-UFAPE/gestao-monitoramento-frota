class Endereco < ApplicationRecord
  # belongs_to :rotum
  has_many :paradas, dependent: :destroy
end
