class CreateInstancias < ActiveRecord::Migration
  def change
    create_table(:instancias) do |t|
      t.belongs_to :juzgado

      t.string :nombre

      t.timestamps
    end
  end
end
