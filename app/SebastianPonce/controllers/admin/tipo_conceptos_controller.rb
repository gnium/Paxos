class Admin::TipoConceptosController < Admin::CoreController
  has_scope :alfabeticamente, default: true, type: :boolean

  private

  def resource_params
    return [] if request.get?
    [ params.require(:tipo_concepto).permit(:nombre) ]
  end
end
