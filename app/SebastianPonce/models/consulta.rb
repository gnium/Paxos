class Consulta < ActiveRecord::Base
  validates :caso, :estudio, presence: true

  belongs_to :caso
  belongs_to :estudio

  scope :ultimas, order("consultas.created_at ASC")
end
