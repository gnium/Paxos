class RemoveActorIdToCasos < ActiveRecord::Migration
  def up
    remove_column :casos, :actor_id
  end

  def down
    add_column :casos, :actor_id, :integer
  end
end
