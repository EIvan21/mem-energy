view: inventario {
  sql_table_name: `gtect-lab-ei.energia.inventario` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: dias_inventario_cajas {
    type: number
    sql: ${TABLE}.dias_inventario_cajas ;;
  }
  dimension: dias_inventario_estrategicas {
    type: number
    sql: ${TABLE}.dias_inventario_estrategicas ;;
  }
  dimension: dias_inventario_mp {
    type: number
    sql: ${TABLE}.dias_inventario_mp ;;
  }
  dimension: dias_inventario_pt {
    type: number
    sql: ${TABLE}.dias_inventario_pt ;;
  }
  dimension: dias_inventario_regulares {
    type: number
    sql: ${TABLE}.dias_inventario_regulares ;;
  }
  dimension: dias_inventario_valor {
    type: number
    sql: ${TABLE}.dias_inventario_valor ;;
  }
  dimension: fecha {
    type: string
    sql: ${TABLE}.fecha ;;
  }

  dimension_group: date {
    type: time
    sql: TIMESTAMP(${TABLE}.fecha) ;;
    timeframes: [date, month, month_name, year, week, day_of_week, day_of_month]
  }
  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }
  dimension: articulo {
    type: string
    sql: ${TABLE}.articulo ;;
  }
  dimension: nombre_entidad {
    type: string
    sql:
    CASE
      WHEN ${localidad} = 'GDL' THEN 'jalisco'
      WHEn ${localidad} = 'MEX' THEN 'mexico'
      WHEN ${localidad} = 'MTY' THEN 'nuevo leon'
      WHEn ${localidad} = 'PUE' THEN 'puebla'
      WHEN ${localidad} = 'QRO' THEN 'queretaro'
      WHEN ${localidad} = 'SLP' THEN 'san luis potosi'
      WHEN ${localidad} = 'VHS' THEN 'tabasco'
    ELSE 'sonora'
    END

      ;;
  }


  dimension: test_map {
    sql: ${nombre_entidad} ;;
    map_layer_name: estados_republica
  }

  dimension: tipo_material {
    type: string
    sql: ${TABLE}.tipo_material ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: avg_inv_cajas {
    type: average
    sql: ${dias_inventario_cajas} ;;
  }
  measure: sum_inv_cajas {
    type: sum
    sql: ${dias_inventario_cajas} ;;
  }
  measure: avg_inv_estrategicas {
    type: average
    sql: ${dias_inventario_estrategicas} ;;
  }
  measure: sum_inv_estrategicas {
    type: sum
    sql: ${dias_inventario_estrategicas} ;;
  }
  measure: avg_inv_mp {
    type: average
    sql: ${dias_inventario_mp} ;;
  }
  measure: sum_inv_mp {
    type: sum
    sql: ${dias_inventario_mp} ;;
  }
  measure: avg_inv_pt {
    type: average
    sql: ${dias_inventario_pt} ;;
  }
  measure: avg_inv_regulares {
    type: average
    sql: ${dias_inventario_regulares} ;;
  }
  measure: avg_inv_valor {
    type: average
    sql: ${dias_inventario_valor} ;;
  }

  #######

  # Patametro

  parameter: metrica {
    type: unquoted
    allowed_value: {
      label: "Dias de Inventario en Cajas"
      value: "dias_inventario_cajas"
    }
    allowed_value: {
      label: "Dias de Inventario Estratégicas"
      value: "dias_inventario_estrategicas"
    }
    allowed_value: {
      label: "Dias de Inventario en MP"
      value: "dias_inventario_mp"
    }
    allowed_value: {
      label: "Dias de Inventario en PT"
      value: "dias_inventario_pt"
    }
    allowed_value: {
      label: "Dias de Inventario Regulares"
      value: "dias_inventario_regulares"
    }
    allowed_value: {
      label: "Dias de Inventario en Valor $"
      value: "dias_inventario_valor"
    }
  }

  measure: dynamic_calculation {
    label_from_parameter: metrica
    # description: "Use this calculation with the selectors for measure type and metric to calculate"
    type: average
    sql: {% if metrica._parameter_value == 'dias_inventario_cajas'%} ${dias_inventario_cajas}
          {% elsif metrica._parameter_value == 'dias_inventario_estrategicas' %} ${dias_inventario_estrategicas}
          {% elsif metrica._parameter_value == 'dias_inventario_mp' %} ${dias_inventario_mp}
          {% elsif metrica._parameter_value == 'dias_inventario_pt' %} ${dias_inventario_pt}
          {% elsif metrica._parameter_value == 'dias_inventario_valor' %} ${dias_inventario_valor}
          {% elsif metrica._parameter_value == 'dias_inventario_regulares' %} ${dias_inventario_regulares}
          {% else %} ${dias_inventario_valor})
          {% endif %}
          ;;
  }

}
