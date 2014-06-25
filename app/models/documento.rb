class Documento < ActiveRecord::Base
  validates :actor_id, presence: true

  belongs_to :user
  belongs_to :actor

  scope :ultimos, order("documentos.fecha_entrega DESC")

  delegate :nombre, to: :actor, prefix: true
end
