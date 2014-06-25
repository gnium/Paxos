class CasoActor < ActiveRecord::Base
  belongs_to :caso
  belongs_to :actor

  # validates :caso, :actor, presence: true
end
