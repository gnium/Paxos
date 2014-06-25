class Movimiento < ActiveRecord::Base
  validates :actor_id, :concepto_id, :importe, :descripcion, presence: true

  belongs_to :user
  belongs_to :actor
  belongs_to :concepto

  scope :ultimos, order("movimientos.fecha DESC")

  delegate :nombre, to: :actor, prefix: true
  delegate :nombre, to: :concepto, prefix: true
  delegate :tipo_concepto, to: :concepto, prefix: true

  before_save :calc_sign

  def show_importe
    importe.to_i * sign
  end

private

  def calc_sign
    self.importe *= sign
  end

  def sign
    (concepto && concepto_tipo_concepto.nombre == "Haber") ? 1 : -1
  end
end
