# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :actores, '<span class="iconfa-group"></span> Actores</a>'.html_safe, actores_path, highlights_on: /actores/
    primary.item :casos, '<span class="iconfa-tasks"></span> Casos</a>'.html_safe, casos_path, highlights_on: /casos/
    primary.item :documentos, '<span class="iconfa-book"></span> Documentos</a>'.html_safe, documentos_path, highlights_on: /documentos/
    primary.item :movimientos, '<span class="iconfa-money"></span> Cuenta corriente</a>'.html_safe, movimientos_path, highlights_on: /movimientos/

    primary.dom_class = 'nav nav-tabs nav-stacked'
  end
end
