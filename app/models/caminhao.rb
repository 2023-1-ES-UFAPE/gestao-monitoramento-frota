class Caminhao < ApplicationRecord
  has_one :rotum, dependent: :destroy
  has_many :paradas, dependent: :destroy

  validates :modelo, presence: true, length: {minimum:8}, numericality: false
  validates :placa, presence: true, length: {maximum:12}, numericality: false
  validates :ano, presence: true, length: {maximum:9999}, numericality: true
  validates :capacidade, presence: true, length: {maximum:1000}, numericality: false
  validates :status, presence: true, length: {maximum:16}, numericality: false
  validates :chassi, presence: true, uniqueness: true, length: {minimum:10}, numericality: false


end
