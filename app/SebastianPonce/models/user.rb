class User < ActiveRecord::Base
  devise  :database_authenticatable, :recoverable, :rememberable,
          :trackable, :validatable, :invitable

  validates :nombre, :apellido, :estudio, presence: true

  belongs_to :estudio

  scope :alfabeticamente, order("users.apellido ASC, users.nombre ASC")

  delegate :nombre, to: :estudio, prefix: true

  def nombre_completo
    [nombre, apellido].join(", ")
  end
end
