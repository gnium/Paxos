class Estudio < ActiveRecord::Base
  validates :nombre, presence: true

  scope :alfabeticamente, order("estudios.nombre ASC")

  has_many :actores
  has_many :documentos
  has_many :movimientos
  has_many :casos

  def cuenta_corriente
    @cuenta_corriente ||= movimientos.sum(:importe)
  end
end
