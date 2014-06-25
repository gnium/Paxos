class CreateMovimientos < ActiveRecord::Migration
  def change
    create_table(:movimientos) do |t|
      t.belongs_to :estudio
      t.belongs_to :user
      t.belongs_to :actor
      t.belongs_to :concepto

      t.date :fecha
      t.integer :importe
      t.text :descripcion

      t.timestamps
    end

    add_index :movimientos, :estudio_id
    add_index :movimientos, :user_id
    add_index :movimientos, :actor_id
    add_index :movimientos, :concepto_id
  end
end
