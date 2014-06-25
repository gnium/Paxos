# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :estudios, '<span class="iconfa-legal"></span> Estudios'.html_safe, admin_estudios_path, highlights_on: /estudios/
    primary.item :users, '<span class="iconfa-group"></span> Abogados'.html_safe, admin_users_path, highlights_on: /users/
    primary.item :juzgados, '<span class="iconfa-home"></span> Juzgados'.html_safe, admin_juzgados_path, highlights_on: /juzgados|instancias/
    primary.item :feriados, '<span class="iconfa-calendar"></span> Feriados Judiciales'.html_safe, admin_feriados_path, highlights_on: /feriados/
    primary.item :tipo_procesos, '<span class="iconfa-cogs"></span> Tipo Procesos'.html_safe, admin_tipo_procesos_path, highlights_on: /tipo_procesos/
    primary.item :caso_estados, '<span class="iconfa-cogs"></span> Caso-Estados'.html_safe, admin_caso_estados_path, highlights_on: /caso_estados/
    primary.item :conceptos, '<span class="iconfa-cogs"></span> Concepto Movimientos'.html_safe, admin_conceptos_path, highlights_on: /\/conceptos/
    primary.item :tipo_actores, '<span class="iconfa-cogs"></span> Tipo-actores'.html_safe, admin_tipo_actores_path, highlights_on: /tipo_actores/

    primary.dom_class = 'nav nav-tabs nav-stacked'
  end
end
