class AddCompradorToProdutos < ActiveRecord::Migration[8.0]
  def change
    add_reference :produtos, :comprador, null: false, foreign_key: true
  end
end
