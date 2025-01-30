# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_01_30_223244) do
  create_table "lances", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.decimal "valor"
    t.integer "leilao_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leilao_id"], name: "index_lances_on_leilao_id"
    t.index ["usuario_id"], name: "index_lances_on_usuario_id"
  end

  create_table "leilaos", force: :cascade do |t|
    t.integer "produto_id", null: false
    t.decimal "preco_minimo"
    t.decimal "lance_inicial"
    t.integer "vendedor_id", null: false
    t.integer "comprador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comprador_id"], name: "index_leilaos_on_comprador_id"
    t.index ["produto_id"], name: "index_leilaos_on_produto_id"
    t.index ["vendedor_id"], name: "index_leilaos_on_vendedor_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.decimal "preco"
    t.string "imagem"
    t.integer "vendedor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendedor_id"], name: "index_produtos_on_vendedor_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.text "interesses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "lances", "leilaos"
  add_foreign_key "lances", "usuarios"
  add_foreign_key "leilaos", "produtos"
  add_foreign_key "leilaos", "usuarios", column: "comprador_id"
  add_foreign_key "leilaos", "usuarios", column: "vendedor_id"
  add_foreign_key "produtos", "usuarios", column: "vendedor_id"
end
