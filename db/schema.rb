# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151125002523) do

  create_table "animales", force: :cascade do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.date     "fecha_de_nacimiento"
    t.string   "raza"
    t.string   "genero"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
  end

  add_index "animales", ["user_id"], name: "index_animales_on_user_id"

  create_table "calendario_nutriciones", force: :cascade do |t|
    t.integer  "dia"
    t.integer  "kilogramos"
    t.integer  "nutricion_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "calendario_nutriciones", ["nutricion_id"], name: "index_calendario_nutriciones_on_nutricion_id"

  create_table "calendario_producciones", force: :cascade do |t|
    t.integer  "dia"
    t.integer  "manana"
    t.integer  "tarde"
    t.integer  "finca"
    t.integer  "produccion_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "calendario_producciones", ["produccion_id"], name: "index_calendario_producciones_on_produccion_id"

  create_table "higienes", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "codigo"
    t.string   "elemento"
    t.string   "material"
    t.string   "sustancia_aseo"
    t.string   "sustancia_desinfectante"
    t.string   "uso"
    t.string   "dosis"
    t.string   "higiene_manana"
    t.string   "higiene_tarde"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "nutriciones", force: :cascade do |t|
    t.integer  "animal_id"
    t.date     "mes_nutricion"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "nutriciones", ["animal_id"], name: "index_nutriciones_on_animal_id"

  create_table "parcelas", force: :cascade do |t|
    t.integer  "codigo"
    t.integer  "area"
    t.string   "tipo_pasto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partos", force: :cascade do |t|
    t.integer  "animal_id"
    t.date     "fecha_parto"
    t.string   "codigo_nacido"
    t.string   "nombre"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "raza"
    t.string   "genero"
    t.integer  "padre_id"
  end

  add_index "partos", ["animal_id"], name: "index_partos_on_animal_id"

  create_table "producciones", force: :cascade do |t|
    t.integer  "animal_id"
    t.date     "dia_produccion"
    t.decimal  "cantidad_manana"
    t.decimal  "cantidad_tarde"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "producciones", ["animal_id"], name: "index_producciones_on_animal_id"

  create_table "registro_parcelas", force: :cascade do |t|
    t.integer  "parcela_id"
    t.date     "fecha_entrada"
    t.date     "fecha_salida"
    t.date     "fecha_proxima_parte"
    t.integer  "numero_de_vacas"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "registro_parcelas", ["parcela_id"], name: "index_registro_parcelas_on_parcela_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "iniciales"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
