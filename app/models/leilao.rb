class Leilao < ApplicationRecord
  belongs_to :produto
  belongs_to :vendedor, class_name: 'Usuario', foreign_key: "vendedor_id"
  belongs_to :comprador, class_name: 'Usuario', foreign_key: "comprador_id"
  has_many :lances
end

