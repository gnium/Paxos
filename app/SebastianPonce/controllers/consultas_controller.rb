class ConsultasController < DashboardController
  has_scope :ultimas, default: true, type: :boolean

  belongs_to :caso

  def create
    build_resource
    resource.estudio = @current_estudio

    super
  end

  private

  def resource_params
    return [] if request.get?
    [ params.require(:consulta).permit(:fecha, :titulo, :descripcion, 
      :fecha_presentacion, :con_vencimiento) ]
  end
end
