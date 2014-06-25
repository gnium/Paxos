class CreateTipoProcesos < ActiveRecord::Migration
  def change
    create_table(:tipo_procesos) do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
