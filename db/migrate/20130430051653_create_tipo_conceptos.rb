class CreateTipoConceptos < ActiveRecord::Migration
  def change
    create_table(:tipo_conceptos) do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
