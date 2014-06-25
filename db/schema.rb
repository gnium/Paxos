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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130622185207) do

  create_table "actores", :force => true do |t|
    t.integer  "estudio_id"
    t.string   "nombre"
    t.string   "tipo"
    t.string   "tipo_documento"
    t.string   "documento"
    t.string   "domicilio"
    t.string   "telefono"
    t.date     "fecha_nacimiento"
    t.string   "estado_civil"
    t.string   "casado_con"
    t.string   "email"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "tipo_actor_id"
  end

  add_index "actores", ["estudio_id"], :name => "index_actores_on_estudio_id"
  add_index "actores", ["tipo_actor_id"], :name => "index_actores_on_tipo_actor_id"

  create_table "admins", :force => true do |t|
    t.string   "email",              :default => "", :null => false
    t.string   "encrypted_password", :default => "", :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true

  create_table "caso_actores", :force => true do |t|
    t.integer  "caso_id"
    t.integer  "actor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "caso_actores", ["actor_id"], :name => "index_caso_actores_on_actor_id"
  add_index "caso_actores", ["caso_id"], :name => "index_caso_actores_on_caso_id"

  create_table "caso_estados", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "casos", :force => true do |t|
    t.integer  "estudio_id"
    t.integer  "tipo_proceso_id"
    t.integer  "user_id"
    t.integer  "instancia_id"
    t.string   "caratula"
    t.text     "observacion"
    t.string   "numero_carpeta"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.string   "numero_archivo"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "casos", ["estudio_id"], :name => "index_casos_on_estudio_id"
  add_index "casos", ["instancia_id"], :name => "index_casos_on_instancia_id"
  add_index "casos", ["tipo_proceso_id"], :name => "index_casos_on_tipo_proceso_id"
  add_index "casos", ["user_id"], :name => "index_casos_on_user_id"

  create_table "conceptos", :force => true do |t|
    t.integer  "tipo_concepto_id"
    t.string   "nombre"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "conceptos", ["tipo_concepto_id"], :name => "index_conceptos_on_tipo_concepto_id"

  create_table "consultas", :force => true do |t|
    t.integer  "caso_id"
    t.integer  "estudio_id"
    t.date     "fecha"
    t.string   "titulo"
    t.text     "descripcion"
    t.date     "fecha_presentacion"
    t.boolean  "con_vencimiento",    :default => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "consultas", ["caso_id"], :name => "index_consultas_on_caso_id"
  add_index "consultas", ["estudio_id"], :name => "index_consultas_on_estudio_id"

  create_table "documentos", :force => true do |t|
    t.integer  "estudio_id"
    t.integer  "user_id"
    t.integer  "actor_id"
    t.string   "descripcion"
    t.date     "fecha_entrega"
    t.date     "fecha_devolucion"
    t.string   "ubicacion_fisica"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "documentos", ["actor_id"], :name => "index_documentos_on_actor_id"
  add_index "documentos", ["estudio_id"], :name => "index_documentos_on_estudio_id"
  add_index "documentos", ["user_id"], :name => "index_documentos_on_user_id"

  create_table "estudios", :force => true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "domicilio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "feriados", :force => true do |t|
    t.date     "fecha"
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "instancias", :force => true do |t|
    t.integer  "juzgado_id"
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "juzgados", :force => true do |t|
    t.string   "nombre"
    t.integer  "position",   :default => 0
    t.integer  "piso"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "juzgados", ["position"], :name => "index_juzgados_on_position"

  create_table "movimientos", :force => true do |t|
    t.integer  "estudio_id"
    t.integer  "user_id"
    t.integer  "actor_id"
    t.integer  "concepto_id"
    t.date     "fecha"
    t.integer  "importe"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "movimientos", ["actor_id"], :name => "index_movimientos_on_actor_id"
  add_index "movimientos", ["concepto_id"], :name => "index_movimientos_on_concepto_id"
  add_index "movimientos", ["estudio_id"], :name => "index_movimientos_on_estudio_id"
  add_index "movimientos", ["user_id"], :name => "index_movimientos_on_user_id"

  create_table "tipo_actores", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_conceptos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_procesos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                :default => "", :null => false
    t.string   "encrypted_password",                   :default => ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "estudio_id"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.string   "invitation_token",       :limit => 60
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["invitation_token"], :name => "index_users_on_invitation_token", :unique => true
  add_index "users", ["invited_by_id"], :name => "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
