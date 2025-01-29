class Produto < ApplicationRecord
  belongs_to :vendedor, class_name: 'Usuario'
  belongs_to :comprador, class_name: 'Usuario'
  has_one :leilao
end
