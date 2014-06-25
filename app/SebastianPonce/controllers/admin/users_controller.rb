class Admin::UsersController < Admin::CoreController
  has_scope :alfabeticamente, default: true, type: :boolean

  def create
    @user = User.invite!(resource_params.first)
    if @user.valid?
      redirect_to(collection_url, notice: "Abogado invitado con exito!")
    else
      render "new"
    end
  end

  private

  def resource_params
    return [] if request.get?
    [ params.require(:user).permit(:nombre, :apellido, :telefono, :email, :estudio_id) ]
  end
end
