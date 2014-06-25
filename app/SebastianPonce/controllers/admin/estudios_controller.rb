class Admin::EstudiosController < Admin::CoreController
  has_scope :alfabeticamente, default: true, type: :boolean

  private

  def resource_params
    return [] if request.get?
    [ params.require(:estudio).permit(:nombre, :domicilio, :telefono) ]
  end
end
