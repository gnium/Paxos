class Admin::FeriadosController < Admin::CoreController
  has_scope :crono_desc, default: true, type: :boolean

  private

  def resource_params
    return [] if request.get?
    [ params.require(:feriado).permit(:fecha, :nombre) ]
  end
end
