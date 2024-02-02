class Parada < ApplicationRecord
  belongs_to :rotum
  belongs_to :endereco
  belongs_to :caminhao
end
