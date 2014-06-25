class Admin::JuzgadosController < Admin::CoreController
  has_scope :sorted, default: true, type: :boolean

  private

  def resource_params
    return [] if request.get?
    [ params.require(:juzgado).permit(:nombre, :piso, :position) ]
  end
end
