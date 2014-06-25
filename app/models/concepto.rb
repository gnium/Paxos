class Concepto < ActiveRecord::Base
  validates :nombre, presence: true, uniqueness: { scope: :tipo_concepto_id }
  validates :tipo_concepto_id, presence: true

  belongs_to :tipo_concepto

  scope :alfabeticamente, order("conceptos.nombre ASC")

  delegate :nombre, to: :tipo_concepto, prefix: true
end
