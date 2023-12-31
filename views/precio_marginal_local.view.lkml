view: precio_marginal_local {
  sql_table_name: pml_energia.precio_marginal_local ;;
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
  dimension: indice_henry_ford {
    type: number
    sql: ${TABLE}.indice_henry_ford ;;
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
  }
  dimension: nombre_municipio {
    type: string
    sql: ${TABLE}.nombre_municipio ;;
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
    sql: ${indice_henry_ford} ;;
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
