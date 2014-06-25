class TipoProceso < ActiveRecord::Base
  validates :nombre, presence: true, uniqueness: true

  scope :alfabeticamente, order("tipo_procesos.nombre ASC")
end
