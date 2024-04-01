
view: derived_table_ua {
  derived_table: {
    sql: SELECT
          precio_marginal_local.componente_congestion  AS precio_marginal_local_componente_congestion,
          precio_marginal_local.componente_energia  AS precio_marginal_local_componente_energia,
          precio_marginal_local.componente_perdidas  AS precio_marginal_local_componente_perdidas,
          precio_marginal_local.latitud  AS precio_marginal_local_latitud,
          precio_marginal_local.longitud  AS precio_marginal_local_longitud,
          precio_marginal_local.nombre_entidad  AS precio_marginal_local_nombre_entidad,
          IF(precio_marginal_local.latitud  IS NOT NULL AND precio_marginal_local.longitud  IS NOT NULL, CONCAT(IFNULL(CAST(precio_marginal_local.latitud  AS STRING), ''),',',IFNULL(CAST(precio_marginal_local.longitud  AS STRING), '')), NULL) AS precio_marginal_local_location
      FROM `gtect-lab-ei.energia.energia`  AS precio_marginal_local
      WHERE nombre_entidad = '{{ _user_attributes['energia_dataset'] }}'
      GROUP BY
          1,
          2,
          3,
          4,
          5,
          6,
          7
      ORDER BY
          1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: perdidas_mean {
    type: average
    sql: ${precio_marginal_local_componente_perdidas} ;;
  }
  measure: congestion_mean {
    type: average
    sql: ${precio_marginal_local_componente_congestion} ;;
  }
  measure: energia_mean {
    type: average
    sql: ${precio_marginal_local_componente_energia} ;;
  }


  dimension: precio_marginal_local_componente_congestion {
    type: number
    sql: ${TABLE}.precio_marginal_local_componente_congestion ;;
  }

  dimension: precio_marginal_local_componente_energia {
    type: number
    sql: ${TABLE}.precio_marginal_local_componente_energia ;;
  }

  dimension: precio_marginal_local_componente_perdidas {
    type: number
    sql: ${TABLE}.precio_marginal_local_componente_perdidas ;;
  }

  dimension: precio_marginal_local_latitud {
    type: number
    sql: ${TABLE}.precio_marginal_local_latitud ;;
  }

  dimension: precio_marginal_local_longitud {
    type: number
    sql: ${TABLE}.precio_marginal_local_longitud ;;
  }

  dimension: precio_marginal_local_nombre_entidad {
    type: string
    sql: ${TABLE}.precio_marginal_local_nombre_entidad ;;
  }

  dimension: location {
    type: location
    sql_latitude:${precio_marginal_local_latitud} ;;
    sql_longitude:${precio_marginal_local_longitud} ;;
  }

  set: detail {
    fields: [
        precio_marginal_local_componente_congestion,
  precio_marginal_local_componente_energia,
  precio_marginal_local_componente_perdidas,
  precio_marginal_local_latitud,
  precio_marginal_local_longitud,
  precio_marginal_local_nombre_entidad,

    ]
  }
}
