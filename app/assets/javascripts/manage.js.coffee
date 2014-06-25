jQuery ($) ->
  $('.dyntable').dataTable
    "sPaginationType": "full_numbers"
    "aaSortingFixed": [[0, "asc"]]
    "fnDrawCallback": (oSettings)->
      jQuery.uniform.update()
    "oLanguage":
      "sProcessing":     "Procesando..."
      "sLengthMenu":     "Mostrar _MENU_ registros"
      "sZeroRecords":    "No se encontraron resultados"
      "sEmptyTable":     "Ningún dato disponible en esta tabla"
      "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros"
      "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros"
      "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)"
      "sInfoPostFix":    ""
      "sSearch":         "Buscar:"
      "sUrl":            ""
      "sInfoThousands":  ","
      "sLoadingRecords": "Cargando..."
      "oPaginate":
        "sFirst":    "Primero"
        "sLast":     "Último"
        "sNext":     "Siguiente"
        "sPrevious": "Anterior"
      "oAria":
        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente"
        "sSortDescending": ": Activar para ordenar la columna de manera descendente"

  $(".chzn-select").chosen
    no_results_text: "No se encontraron registros!"

  if $("#calc").size() > 0
    $("#calc form").submit (e)->
      e.preventDefault()
      self = $(@)
      $.ajax
          url: self.attr("action")
          type: "POST"
          data: self.serialize()
          success: (data)->
            $("#date-diff").html data


  $(document).on "click", "a[rel='confirm']", ->
    confirm $(@).data("confirm")

  # $(document).on "click", "a[data-remote=true]", (e)->
  #   e.preventDefault()
  #   $.ajax
  #     url: $(this).attr("href")
  #     dataType: "script"

  $(document).on "click", ".widget-box .buttons .close", (e)->
    e.preventDefault()
    $(this).parent().parent().parent().remove()

  check_tipo_persona = ->
    if $("#actor_tipo").val() is "Fisica"
      $("#actor-estado-civil").show()
      check_estado_civil()
      $("#actor_tipo_documento").attr("disabled", false)
    else
      $("#actor-estado-civil").hide()
      $("#actor_tipo_documento").val("CUIT")
      $("#actor_tipo_documento").attr("disabled", true)

  check_estado_civil = ->
    if $("#actor_estado_civil").val() is "Casado/a"
      $("#casado-con-field").show()
    else
      $("#casado-con-field").hide()

  if $(".actor-form").size() > 0
    check_tipo_persona()
    check_estado_civil()
    $("#actor_tipo").change ->
      check_tipo_persona()
    $("#actor_estado_civil").change ->
      check_estado_civil()
