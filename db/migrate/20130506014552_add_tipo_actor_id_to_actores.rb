class AddTipoActorIdToActores < ActiveRecord::Migration
  def change
    add_column :actores, :tipo_actor_id, :integer
    add_index :actores, :tipo_actor_id
  end
end
