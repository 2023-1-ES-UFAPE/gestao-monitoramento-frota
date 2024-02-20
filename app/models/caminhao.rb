class Caminhao < ApplicationRecord
  has_one :rotum, dependent: :destroy
  has_many :paradas, dependent: :destroy

  validates :modelo, presence: true, length: {minimum:8}
  validates :placa, presence: true, length: {maximum:12}
  validates :ano, presence: true, length: {maximum:9999}, numericality: true
  validates :capacidade, presence: true, length: {maximum:1000}, numericality: true
  validates :status, length: {maximum:16}, numericality: false
  validates :chassi, presence: true, length: {minimum:2}
  validates :data_ultima_inspecao, presence: true

end
