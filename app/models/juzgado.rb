class Juzgado < ActiveRecord::Base
  validates :nombre, presence: true, uniqueness: true

  has_many :instancias

  scope :sorted, order("juzgados.position ASC")
end
