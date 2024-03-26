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
    drill_fields: [nombre_municipio,nombre_nodo,energia_mean]
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
    drill_fields: [nombre_municipio,nombre_nodo]
  }
  dimension: nombre_municipio {
    type: string
    sql: ${TABLE}.nombre_municipio ;;
    drill_fields: [nombre_nodo]
  }
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

  }



  # measure: total {
  #   type: sum
  #   sql: ${amount} ;;
  #   value_format: "$#,##0.00"
  #   drill_fields: [id]
  #   link: {
  #     label: "By Distributor"
  #     url: "{{ link }}&fields=distributors.name,transactions_history.total"
  #   }
  #   link: {
  #     label: "By Carrier"
  #     url: "{{ link }}&fields=carriers.name,transactions_history.total"
  #   }
  # }

  # set: distributor {
  #   fields: [distributors.name,total]
  # }
  # link: {
  #   label: "By Distributor"
  #   url: "{{ link }}?fields=distributors.name,transactions_history.total"
  #   #url: "/explore/quo_pagaqui_al/transactions_history?fields=distributors.name,transactions_history.total"
  # }

  measure: perdidas_mean {
    type: average
    sql: ${componente_perdidas} ;;
  }

  measure: congestion_mean {
    type: average
    sql: ${componente_congestion} ;;
  }

  measure: henry_hub_mean {
    type: average
    sql: ${henry_hub_index} ;;
  }
  measure: temperatura_mean {
    type: average
    sql: ${temperatura} ;;
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
