class CreateLeilaos < ActiveRecord::Migration[8.0]
  def change
    create_table :leilaos do |t|
      t.references :produto, null: false, foreign_key: true
      t.decimal :preco_minimo
      t.decimal :lance_inicial
      t.references :vendedor, null: false, foreign_key: { to_table: :usuarios }
      t.references :comprador, null: false, foreign_key: { to_table: :usuarios }

      t.timestamps
    end
  end
end
