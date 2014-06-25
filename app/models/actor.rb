class Actor < ActiveRecord::Base
  validates :nombre, :tipo_actor_id, :tipo_documento, :documento, presence: true

  scope :alfabeticamente, order("actores.nombre ASC")
  scope :clientes, joins(:tipo_actor).where("tipo_actores.nombre" => "Clientes")

  belongs_to :estudio
  belongs_to :tipo_actor

  delegate :nombre, to: :tipo_actor, prefix: true
end
