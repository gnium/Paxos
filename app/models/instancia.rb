class Instancia < ActiveRecord::Base
  validates :nombre, presence: true, uniqueness: { scope: :juzgado_id }

  belongs_to :juzgado

  scope :alfabeticamente, order("instancias.nombre ASC")
end
