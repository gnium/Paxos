class CreateCasoActores < ActiveRecord::Migration
  def change
    create_table(:caso_actores) do |t|
      t.belongs_to :caso
      t.belongs_to :actor

      t.timestamps
    end
    add_index :caso_actores, :caso_id
    add_index :caso_actores, :actor_id
  end
end
