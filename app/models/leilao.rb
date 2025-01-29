class Leilao < ApplicationRecord
  belongs_to :produto
  belongs_to :vendendor, class_name: 'Usuario'
  belongs_to :comprador, class_name: 'Usuario', optional: true
  has_many :lances
end
