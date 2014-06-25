class CasosController < DashboardController
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
    [ params.require(:caso).permit(:tipo_proceso_id, :instancia_id,
      :caratula, :observacion, :numero_carpeta, :fecha_inicio, :fecha_fin,
      :numero_archivo, caso_actores_attributes: [ :actor_id, :_destroy ])
    ]
  end
end
