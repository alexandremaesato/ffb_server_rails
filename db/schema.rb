# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170303131312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ambientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avaliacaos", force: :cascade do |t|
    t.integer  "avaliado_id"
    t.integer  "tipo_avaliado"
    t.text     "comentario"
    t.integer  "cliente_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "categoria", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favoritos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.integer  "favoritado_id"
    t.integer  "tipo_favoritado"
    t.boolean  "checked"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "publico_ambientes", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publico_clientes", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.date     "aniversario"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "publico_empresas", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publico_produtos", force: :cascade do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json     "fotos"
  end

end
