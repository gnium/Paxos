class CreateConceptos < ActiveRecord::Migration
  def change
    create_table(:conceptos) do |t|
      t.belongs_to :tipo_concepto

      t.string :nombre

      t.timestamps
    end

    add_index :conceptos, :tipo_concepto_id
  end
end
