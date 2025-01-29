class Produto < ApplicationRecord
  belongs_to :vendedor, class_name: 'Usuario', foreign_key: "vendedor_id"
  belongs_to :comprador, class_name: 'Usuario', optional: true
  has_one :leilao 
end
