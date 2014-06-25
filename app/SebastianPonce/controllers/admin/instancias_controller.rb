class Admin::InstanciasController < Admin::CoreController
  has_scope :alfabeticamente, default: true, type: :boolean

  belongs_to :juzgado

  private

  def resource_params
    return [] if request.get?
    [ params.require(:instancia).permit(:nombre) ]
  end
end
