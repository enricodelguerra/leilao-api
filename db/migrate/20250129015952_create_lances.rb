class CreateLances < ActiveRecord::Migration[8.0]
  def change
    create_table :lances do |t|
      t.references :usuario, null: false, foreign_key: true
      t.decimal :valor
      t.references :leilao, null: false, foreign_key: true

      t.timestamps
    end
  end
end
