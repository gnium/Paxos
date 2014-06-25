class Caso < ActiveRecord::Base
  belongs_to :estudio
  belongs_to :tipo_proceso
  belongs_to :user
  belongs_to :instancia

  has_many :caso_actores
  has_many :actores, through: :caso_actores
  has_many :consultas

  validates :estudio, :tipo_proceso_id, :user, :instancia_id, presence: true

  accepts_nested_attributes_for :caso_actores, allow_destroy: true

  scope :ultimos, order("casos.created_at DESC")

  delegate :nombre, to: :tipo_proceso, prefix: true
  delegate :nombre, to: :instancia, prefix: true

  def actores_nombre
    actores.pluck(:nombre).to_sentence
  end
end
