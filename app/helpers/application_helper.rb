module ApplicationHelper

  def display_base_errors resource
    return '' if (resource.errors.empty?) or (resource.errors[:base].empty?)
    messages = resource.errors[:base].map { |msg| content_tag(:p, msg) }.join
    html = <<-HTML
    <div class="alert alert-error alert-block">
      <button type="button" class="close" data-dismiss="alert">&#215;</button>
      #{messages}
    </div>
    HTML
    html.html_safe
  end

  def actores_for_select
    @current_estudio.actores.includes(:tipo_actor).alfabeticamente.
      group_by{ |a| a.tipo_actor_nombre }.
      map { |tipo_actor, actores|
        [tipo_actor, actores.map{|a| [a.nombre, a.id] } ]
      }
  end
end
