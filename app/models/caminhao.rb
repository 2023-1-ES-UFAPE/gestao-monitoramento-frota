class Caminhao < ApplicationRecord
  has_one :rotum, dependent: :destroy
  has_many :paradas, dependent: :destroy

  validates :modelo, presence: true, length: {minimum:32}, numericality: false
  validates :placa, presence: true, uniqueness: true, length: {minimum:12}, numericality: false
  validates :ano, presence: true, length: {minimum:9999}, numericality: true
  validates :capacidade, presence: true, length: {minimum:1000}, numericality: false
  validates :status, presence: true, length: {maximum:16}, numericality: false
  validates :chassi, presence: true, uniqueness: true, length: {minimum:10}, numericality: false
  validates :data_ultima_inspecao, on_or_before: lambda { Date.current }


end
