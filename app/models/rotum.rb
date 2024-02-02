class Rotum < ApplicationRecord
  belongs_to :caminhao
  # has_one :parada, dependent: :destroy
end
