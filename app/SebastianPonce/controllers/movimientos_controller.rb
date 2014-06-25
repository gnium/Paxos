class MovimientosController < DashboardController
  has_scope :ultimos, default: true, type: :boolean

  def create
    build_resource
    resource.user = current_user

    super
  end

private

  def begin_of_association_chain
    current_estudio
  end

  def resource_params
    return [] if request.get?
    [ params.require(:movimiento).permit(:actor_id, :concepto_id, :fecha,
      :importe, :descripcion)
    ]
  end
end
