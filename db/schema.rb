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

ActiveRecord::Schema.define(version: 20140606200259) do

  create_table "centros", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultar_salidas", force: true do |t|
    t.date     "Selccione_fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", force: true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "indentificacion"
    t.string   "telefono"
    t.string   "mail"
    t.string   "codigo"
    t.string   "EPS"
    t.string   "IPS"
    t.integer  "centro_id"
    t.integer  "tipodoc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcionarios", ["centro_id"], name: "index_funcionarios_on_centro_id"
  add_index "funcionarios", ["tipodoc_id"], name: "index_funcionarios_on_tipodoc_id"

  create_table "logueos", force: true do |t|
    t.string   "usuario"
    t.string   "clave"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrar_salidas", force: true do |t|
    t.date     "Selccione_fecha"
    t.string   "lugarSalida"
    t.string   "FuncionarioACargo"
    t.integer  "fichaGrupo"
    t.boolean  "tipoSalida_pedagogico"
    t.boolean  "Recreativo"
    t.boolean  "Otro"
    t.string   "digacual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipodocs", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
