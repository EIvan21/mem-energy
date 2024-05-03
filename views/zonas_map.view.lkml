
view: zonas_map {
  derived_table: {
    sql: SELECT
          CASE
            WHEN precio_marginal_local.nombre_entidad IN ('baja california', 'baja california sur') THEN 'California'
            WHEn precio_marginal_local.nombre_entidad IN ('sonora', 'coahuila', 'chihuahua', 'durango') THEN 'NorOeste'
            WHEN precio_marginal_local.nombre_entidad IN ('chihuahua', 'colima', 'nayarit', 'san luis potosi') THEN 'NorCentro'
            WHEn precio_marginal_local.nombre_entidad IN ('tamaulipas', 'nuevo leon', 'veracruz', 'morelos', 'tabasco') THEN 'NorEste'
            WHEN precio_marginal_local.nombre_entidad IN ('michoacan', 'guerrero', 'oaxaca', 'jalisco') THEN 'Oeste'
            WHEN precio_marginal_local.nombre_entidad IN ('cdmx', 'puebla', 'michoacan') THEN 'Sur'
          ELSE 'Este'
          END

             AS precio_marginal_local_zona,
          precio_marginal_local.componente_perdidas  AS precio_marginal_local_componente_perdidas
      FROM `gtect-lab-ei.energia.energia`  AS precio_marginal_local
      GROUP BY
          1,
          2
      ORDER BY
          1
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: precio_marginal_local_zona {
    type: string
    sql: ${TABLE}.precio_marginal_local_zona ;;
  }

  dimension: zonas_test_map {
    sql: ${precio_marginal_local_zona};;
    map_layer_name: zonas_test
  }

  dimension: precio_marginal_local_componente_perdidas {
    type: number
    sql: ${TABLE}.precio_marginal_local_componente_perdidas ;;
  }

  measure: perdidas_avg {
    type: average
    sql: ${precio_marginal_local_componente_perdidas} ;;
  }

  set: detail {
    fields: [
      precio_marginal_local_zona,
      precio_marginal_local_componente_perdidas
    ]
  }
}
