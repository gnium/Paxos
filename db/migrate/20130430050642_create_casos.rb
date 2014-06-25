class CreateCasos < ActiveRecord::Migration
  def change
    create_table(:casos) do |t|
      t.belongs_to :estudio
      t.belongs_to :tipo_proceso
      t.belongs_to :user
      t.belongs_to :instancia

      t.string :caratula
      t.text :observacion
      t.string :numero_carpeta
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :numero_archivo

      t.timestamps
    end

    add_index :casos, :estudio_id
    add_index :casos, :tipo_proceso_id
    add_index :casos, :user_id
    add_index :casos, :instancia_id
  end
end
