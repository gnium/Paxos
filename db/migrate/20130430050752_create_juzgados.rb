class CreateJuzgados < ActiveRecord::Migration
  def change
    create_table(:juzgados) do |t|
      t.string :nombre
      t.integer :position, default: 0
      t.integer :piso

      t.timestamps
    end

    add_index :juzgados, :position
  end
end
