class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table(:documentos) do |t|
      t.belongs_to :estudio
      t.belongs_to :user
      t.belongs_to :actor

      t.string :descripcion
      t.date :fecha_entrega
      t.date :fecha_devolucion
      t.string :ubicacion_fisica

      t.timestamps
    end

    add_index :documentos, :estudio_id
    add_index :documentos, :user_id
    add_index :documentos, :actor_id
  end
end
