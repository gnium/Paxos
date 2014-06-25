class DashboardController < CrudController
  before_filter :authenticate_user!
  before_filter :current_estudio

protected

  def current_estudio
    @current_estudio ||= current_user.estudio
  end
end
