class Caminhao < ApplicationRecord
  has_one :rotum, dependent: :destroy
  has_many :paradas, dependent: :destroy
end
