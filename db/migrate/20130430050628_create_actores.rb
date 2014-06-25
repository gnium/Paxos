class CreateActores < ActiveRecord::Migration
  def change
    create_table(:actores) do |t|
      t.belongs_to :estudio

      t.string :nombre
      t.string :tipo
      t.string :tipo_documento
      t.string :documento
      t.string :domicilio
      t.string :telefono
      t.date :fecha_nacimiento
      t.string :estado_civil
      t.string :casado_con
      t.string :email

      t.timestamps
    end

    add_index :actores, :estudio_id
  end
end
