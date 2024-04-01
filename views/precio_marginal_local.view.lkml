view: precio_marginal_local {
  # sql_table_name: `gtect-lab-ei.energia.energia` ;;
  sql_table_name: `gtect-lab-ei.energia.{{ _user_attributes['energia_dataset'] }}` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: clave_entidad {

    type: number
    sql: ${TABLE}.clave_entidad ;;
  }
  dimension: clave_municipio {
    type: number
    sql: ${TABLE}.clave_municipio ;;
  }
  dimension: clave_nodo {
    type: string
    sql: ${TABLE}.clave_nodo ;;
  }
  dimension: componente_congestion {
    type: number
    sql: ${TABLE}.componente_congestion ;;
  }
  dimension: componente_energia {
    type: number
    sql: ${TABLE}.componente_energia ;;
  }
  dimension: componente_perdidas {
    type: number
    sql: ${TABLE}.componente_perdidas ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year,day_of_week, day_of_week_index,day_of_month]
    sql: ${TABLE}.fecha ;;
  }
  dimension: event_initiated_week {
    type: date_week
    sql: ${TABLE}.fecha ;;
  }
  dimension: event_initiated_date {
    type: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: hora {
    type: number
    sql: ${TABLE}.hora ;;
  }
  dimension: henry_hub_index {
    type: number
    sql: ${TABLE}.henry_hub_index ;;
  }
  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }
  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }

  dimension: location {
    type: location
    sql_latitude:${latitud} ;;
    sql_longitude:${longitud} ;;
  }

  dimension: nombre_entidad {
    type: string
    sql: ${TABLE}.nombre_entidad ;;
    drill_fields: [nombre_municipio]
    link: {
      label: "Por municipio"
      url: "@{linear_visualization_drill}{{ link }}&fields=precio_marginal_local.hora,precio_marginal_local.nombre_municipio,precio_marginal_local.energia_mean&pivots=precio_marginal_local.nombre_municipio&vis_config={{ vis_config | encode_uri }}"
    }
    link: {
      label: "Dashboard información por municipio"
      url: "https://gtechdev.cloud.looker.com/dashboards/26?Nombre+Entidad={{nombre_entidad | url_encode}}"
    }
  }
  dimension: nombre_municipio {
    type: string
    sql: ${TABLE}.nombre_municipio ;;
    drill_fields: []
    link: {
      label: "Por nodo"
      url: "@{linear_visualization_drill}{{ link }}&fields=precio_marginal_local.hora,precio_marginal_local.nombre_nodo,precio_marginal_local.energia_mean&pivots=precio_marginal_local.nombre_nodo&vis_config={{ vis_config | encode_uri }}"
    }

  }

  # https://gtechdev.cloud.looker.com/dashboards/26?Nombre+Entidad=cdmx&Hora=%5B0%2C14%5D
  # dimension: more_details {
  #   type: string
  #   sql: "Detalles" ;;
  #   label: "Más detalles"
  #   html: <a href="https://quom.cloud.looker.com/dashboards/7?Cliente={{entities_name | url_encode}}&Fecha={{ _filters['transactions_history.date_date'] | url_encode}}" target="_blank"><center><img src="https://cdn-icons-png.flaticon.com/128/189/189664.png" alt="" height="16" width="16"></center></a>;;
  # }
  dimension: nombre_nodo {
    type: string
    sql: ${TABLE}.nombre_nodo ;;
    drill_fields: [nodo_drill*]
  }
  dimension: pml {
    type: number
    sql: ${TABLE}.pml ;;
  }
  dimension: temperatura {
    type: number
    sql: ${TABLE}.temperatura ;;
    value_format: "0"
  }
  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: pml_mean {
    type: average
    sql: ${pml} ;;
    drill_fields: [nodo_drill*]
  }

  measure: energia_mean {
    type: average
    sql: ${componente_energia} ;;
    drill_fields: [municipio*]
    link: {
      label: "Por municipio y hora"
      url: "{{ link }}&fields=precio_marginal_local.nombre_municipio,precio_marginal_local.energia_mean"
    }
    link: {
      label: "Por nodo desde municipio"
      url: "{{ link }}&fields=precio_marginal_local.nombre_nodo,precio_marginal_local.energia_mean"
    }
    value_format_name: decimal_2

  }
  set:  municipio{
    fields: [nombre_municipio,energia_mean]
  }


  # explore https://gtechdev.cloud.looker.com/explore/pml_edher/precio_marginal_local?qid=2WhganuCVuTrBqQku01Vau&toggle=vis



  measure: perdidas_mean {
    type: average
    sql: ${componente_perdidas} ;;
    html:
    {% if value > 0 %}
    <span style="color:darkred;">{{ rendered_value }}</span>
    {% elsif value > -130 %}
    <span style="color:darkgreen;">{{ rendered_value }}</span>
    {% else %}
    <span style="color:goldenrod;">{{ rendered_value }}</span>
    {% endif %} ;;
    value_format_name: decimal_2
  }

  measure: congestion_mean {
    type: average
    sql: ${componente_congestion} ;;
    html:
    {% if value > 0 %}
    <span style="background-color:darkred; color : white ; font-size:35px)">{{ rendered_value }}</span>
    {% elsif value > -130 %}
    <span style="background-color:darkgreen;color : white;font-size:25px">{{ rendered_value }}</span>
    {% else %}
    <span style="background-color:goldenrod;color : white;font-size:15px">{{ rendered_value }}</span>
    {% endif %} ;;
  }

  measure: henry_hub_mean {
    type: average
    sql: ${henry_hub_index} ;;
  }
  measure: temperatura_mean {
    type: average
    sql: ${temperatura} ;;
    value_format_name: decimal_2
  }

  measure: tem_media {
    type: string
    sql: CONCAT(ROUND(${temperatura_mean},2),' °C') ;;

  }

  set: nodo_drill {
    fields: [
      nombre_nodo,
      nombre_entidad,
      nombre_municipio,
      pml_mean,
      energia_mean,
      congestion_mean,
      perdidas_mean,
      temperatura_mean

    ]
  }

  dimension: date_filter {
    type: date
    sql: ${TABLE}.fecha WHERE ${TABLE}.fecha >= DATE_SUB(NOW(), INTERVAL 6 MONTH;;
  }

  filter: test {
    type: date
    suggest_dimension: date_filter
  }


}
