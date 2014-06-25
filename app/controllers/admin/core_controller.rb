class Admin::CoreController < CrudController
  before_filter :authenticate_admin!
end