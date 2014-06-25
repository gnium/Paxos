class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :current_context

  layout :select_layout

protected

  def current_context
    @current_context ||= controller_path.split("/").first.to_s == "admin" ? 
      "admin" : "dashboard"
  end

  def select_layout
    devise_controller? ? "session" : "application"
  end

  def after_sign_out_path_for(resource_or_scope)
    resource_or_scope == :admin ? admin_root_path : root_path
  end
end
