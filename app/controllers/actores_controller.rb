class ActoresController < DashboardController
  has_scope :alfabeticamente, default: true, type: :boolean

private

  def begin_of_association_chain
    current_estudio
  end

  def resource_params
    return [] if request.get?
    [ params.require(:actor).permit(:nombre, :tipo, :tipo_documento, 
      :documento, :domicilio, :telefono, :fecha_nacimiento, :estado_civil,
      :casado_con, :email, :tipo_actor_id)
    ]
  end
end
