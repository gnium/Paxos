class CreateTipoActores < ActiveRecord::Migration
  def change
    create_table(:tipo_actores) do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
