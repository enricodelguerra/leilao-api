class Usuario < ApplicationRecord
    has_many :registered_products, class_name: 'Produto', foreign_key: 'vendedor_id'
    has_many :purchased_products, class_name: 'Produto', foreign_key: 'comprador_id'
    
    has_many :registered_leilaos, class_name: 'Leilao', foreign_key: 'vendedor_id'
    has_many :purchased_leilaos, class_name: 'Leilao', foreign_key: 'comprador_id' 
    
    has_many :lances
end
