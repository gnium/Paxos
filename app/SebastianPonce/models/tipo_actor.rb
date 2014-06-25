class TipoActor < ActiveRecord::Base
  validates :nombre, presence: true, uniqueness: true

  scope :alfabeticamente, order("tipo_actores.nombre ASC")
end
