class Feriado < ActiveRecord::Base
  validates :fecha, presence: true, uniqueness: true
  validates :nombre, presence: true

  scope :crono_desc, order("feriados.fecha DESC")
end
