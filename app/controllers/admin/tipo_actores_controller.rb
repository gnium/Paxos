class Admin::TipoActoresController < Admin::CoreController
  has_scope :alfabeticamente, default: true, type: :boolean

  private

  def resource_params
    return [] if request.get?
    [ params.require(:tipo_actor).permit(:nombre) ]
  end
end
