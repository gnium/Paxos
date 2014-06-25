class TipoConcepto < ActiveRecord::Base
  validates :nombre, presence: true, uniqueness: true

  scope :alfabeticamente, order("tipo_conceptos.nombre ASC")
end
