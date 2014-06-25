class CreateCasoEstados < ActiveRecord::Migration
  def change
    create_table(:caso_estados) do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
