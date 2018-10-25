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

ActiveRecord::Schema.define(version: 2018_10_24_205738) do

  create_table "administradors", force: :cascade do |t|
    t.string "nombre"
    t.integer "cedula"
    t.integer "puntos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["puntos_id"], name: "index_administradors_on_puntos_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nombre"
    t.integer "puntos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["puntos_id"], name: "index_cursos_on_puntos_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombre"
    t.integer "cedula"
    t.integer "edad"
    t.integer "puntos_id"
    t.integer "poblacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poblacion_id"], name: "index_estudiantes_on_poblacion_id"
    t.index ["puntos_id"], name: "index_estudiantes_on_puntos_id"
  end

  create_table "poblacions", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puntos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
