class Admin::ConceptosController < Admin::CoreController
  has_scope :alfabeticamente, default: true, type: :boolean

  private

  def resource_params
    return [] if request.get?
    [ params.require(:concepto).permit(:nombre, :tipo_concepto_id) ]
  end
end
