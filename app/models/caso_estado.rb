class CasoEstado < ActiveRecord::Base
  validates :nombre, presence: true, uniqueness: true

  scope :alfabeticamente, order("caso_estados.nombre ASC")
end
