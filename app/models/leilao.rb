class Leilao < ApplicationRecord
  belongs_to :produto
  belongs_to :vendendor
  belongs_to :comprador
end
