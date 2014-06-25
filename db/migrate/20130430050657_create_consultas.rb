class CreateConsultas < ActiveRecord::Migration
  def change
    create_table(:consultas) do |t|
      t.belongs_to :caso
      t.belongs_to :estudio

      t.date :fecha
      t.string :titulo
      t.text :descripcion
      t.date :fecha_presentacion
      t.boolean :con_vencimiento, default: false

      t.timestamps
    end

    add_index :consultas, :caso_id
    add_index :consultas, :estudio_id
  end
end
