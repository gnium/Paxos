class Admin::CasoEstadosController < Admin::CoreController
  has_scope :alfabeticamente, default: true, type: :boolean

  private

  def resource_params
    return [] if request.get?
    [ params.require(:caso_estado).permit(:nombre) ]
  end
end
