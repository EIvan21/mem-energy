- dashboard: energy_mexico
  title: Energy Mexico
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Q0wHOl8a0228hll0V70CVS
  elements:
  - title: Componente Congestión y Pérdidas vs Temperatura
    name: Componente Congestión y Pérdidas vs Temperatura
    model: pml_edher
    explore: precio_marginal_local
    type: looker_column
    fields: [precio_marginal_local.congestion_mean, precio_marginal_local.perdidas_mean,
      temperatura]
    filters:
      precio_marginal_local.nombre_entidad: "-baja california,-baja california sur"
    sorts: [temperatura]
    limit: 5000
    dynamic_fields:
    - category: dimension
      description: ''
      label: Bin Temp
      value_format:
      value_format_name:
      calculation_type: bin
      dimension: bin_temp
      args:
      - precio_marginal_local.temperatura
      - '1'
      - '0'
      - '35'
      -
      - classic
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Temperatura
      value_format:
      value_format_name:
      calculation_type: bin
      dimension: temperatura
      args:
      - precio_marginal_local.temperatura
      - '2'
      - '0'
      - '36'
      -
      - classic
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: precio_marginal_local.congestion_mean,
            id: precio_marginal_local.congestion_mean, name: Precio Marginal Local
              Congestion Mean}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: precio_marginal_local.perdidas_mean,
            id: precio_marginal_local.perdidas_mean, name: Precio Marginal Local Perdidas
              Mean}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      precio_marginal_local.perdidas_mean: "#7CB342"
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    map_plot_mode: heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 11
    col: 0
    width: 24
    height: 11
  - title: Relación Componente Energía e indicador Henry Hub
    name: Relación Componente Energía e indicador Henry Hub
    model: pml_edher
    explore: precio_marginal_local
    type: looker_area
    fields: [precio_marginal_local.henry_hub_mean, precio_marginal_local.energia_mean,
      precio_marginal_local.fecha_date]
    fill_fields: [precio_marginal_local.fecha_date]
    filters:
      precio_marginal_local.nombre_entidad: "-baja california,-baja california sur"
    sorts: [precio_marginal_local.henry_hub_mean desc 0]
    limit: 5000
    dynamic_fields:
    - category: dimension
      description: ''
      label: Bin Temp
      value_format:
      value_format_name:
      calculation_type: bin
      dimension: bin_temp
      args:
      - precio_marginal_local.temperatura
      - '1'
      - '0'
      - '35'
      -
      - classic
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      description: ''
      label: Temperatura
      value_format:
      value_format_name:
      calculation_type: bin
      dimension: temperatura
      args:
      - precio_marginal_local.temperatura
      - '2'
      - '0'
      - '36'
      -
      - classic
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 4620e8de-df7a-40e0-89d6-7401f6e64d96
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: precio_marginal_local.henry_hub_mean,
            id: precio_marginal_local.henry_hub_mean, name: Precio Marginal Local
              Henry Hub Mean}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: '', orientation: right, series: [
          {axisId: precio_marginal_local.energia_mean, id: precio_marginal_local.energia_mean,
            name: Precio Marginal Local Energia Mean}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      precio_marginal_local.energia_mean: line
    series_colors: {}
    series_labels:
      precio_marginal_local.henry_hub_mean: Indicador Henry Hub
      precio_marginal_local.energia_mean: Componente Energía
    ordering: none
    show_null_labels: false
    hidden_fields: []
    hidden_points_if_no: []
    map_plot_mode: heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 11
  - title: Precio Energía Mexico
    name: Precio Energía Mexico
    model: pml_edher
    explore: precio_marginal_local
    type: looker_google_map
    fields: [precio_marginal_local.location, precio_marginal_local.pml_mean]
    filters:
      precio_marginal_local.nombre_entidad: "-baja california,-baja california sur"
    sorts: [precio_marginal_local.pml_mean desc 0]
    limit: 5000
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    map_plot_mode: heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    listen: {}
    row: 30
    col: 0
    width: 24
    height: 12
  - title: Componente Pérdidas en México
    name: Componente Pérdidas en México
    model: pml_edher
    explore: precio_marginal_local
    type: looker_google_map
    fields: [precio_marginal_local.location, precio_marginal_local.perdidas_mean]
    filters:
      precio_marginal_local.nombre_entidad: "-baja california,-baja california sur"
    sorts: [precio_marginal_local.perdidas_mean desc 0]
    limit: 5000
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 22
    col: 16
    width: 8
    height: 8
  - title: Componente de Congestión en México
    name: Componente de Congestión en México
    model: pml_edher
    explore: precio_marginal_local
    type: looker_google_map
    fields: [precio_marginal_local.location, precio_marginal_local.congestion_mean]
    filters:
      precio_marginal_local.nombre_entidad: "-baja california,-baja california sur"
      precio_marginal_local.congestion_mean: "<300"
    sorts: [precio_marginal_local.congestion_mean]
    limit: 5000
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 22
    col: 8
    width: 8
    height: 8
  - title: Componente de Energía en México
    name: Componente de Energía en México
    model: pml_edher
    explore: precio_marginal_local
    type: looker_google_map
    fields: [precio_marginal_local.location, precio_marginal_local.energia_mean]
    filters:
      precio_marginal_local.nombre_entidad: "-baja california,-baja california sur"
      precio_marginal_local.energia_mean: "[800, 900]"
    sorts: [precio_marginal_local.energia_mean]
    limit: 5000
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 22
    col: 0
    width: 8
    height: 8
  - title: Relación  de componentes por nodo
    name: Relación  de componentes por nodo
    model: pml_edher
    explore: precio_marginal_local
    type: looker_grid
    fields: [precio_marginal_local.pml_mean, precio_marginal_local.energia_mean, precio_marginal_local.congestion_mean,
      precio_marginal_local.perdidas_mean, precio_marginal_local.nombre_nodo]
    filters:
      precio_marginal_local.nombre_entidad: "-baja california,-baja california sur"
    sorts: [precio_marginal_local.pml_mean desc]
    limit: 10
    dynamic_fields:
    - category: table_calculation
      expression: "${precio_marginal_local.congestion_mean}+${precio_marginal_local.energia_mean}+${precio_marginal_local.perdidas_mean}"
      label: pml
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: pml
      _type_hint: number
      is_disabled: true
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      precio_marginal_local.energia_mean: Componente Energía
      precio_marginal_local.pml_mean: Precio Marginal Local
      precio_marginal_local.congestion_mean: Componente Congestión
      precio_marginal_local.perdidas_mean: Componente de Pérdidas
      precio_marginal_local.nombre_nodo: Nombre del Nodo
    series_cell_visualizations:
      precio_marginal_local.pml_mean:
        is_active: true
      precio_marginal_local.energia_mean:
        is_active: true
        palette:
          palette_id: 807a22b0-53c0-40e2-8b3b-28c8e266b0ea
          collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      precio_marginal_local.congestion_mean:
        is_active: true
      precio_marginal_local.perdidas_mean:
        is_active: true
        palette:
          palette_id: 807a22b0-53c0-40e2-8b3b-28c8e266b0ea
          collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
    hidden_fields:
    hidden_points_if_no: []
    map_plot_mode: heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    listen: {}
    row: 42
    col: 0
    width: 24
    height: 6
  - title: Componente de pérdidas en el tiempo
    name: Componente de pérdidas en el tiempo
    model: pml_edher
    explore: precio_marginal_local
    type: looker_area
    fields: [precio_marginal_local.perdidas_mean, precio_marginal_local.fecha_date]
    filters:
      precio_marginal_local.nombre_entidad: "-baja california,-baja california sur"
      precio_marginal_local.perdidas_mean: ">-50"
    sorts: [precio_marginal_local.fecha_date desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${precio_marginal_local.congestion_mean}+${precio_marginal_local.energia_mean}+${precio_marginal_local.perdidas_mean}"
      label: pml
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: pml
      _type_hint: number
      is_disabled: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Fecha
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      precio_marginal_local.perdidas_mean: Componente de Pérdidas
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      precio_marginal_local.perdidas_mean:
        is_active: true
        palette:
          palette_id: 807a22b0-53c0-40e2-8b3b-28c8e266b0ea
          collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
    hidden_fields:
    hidden_points_if_no: []
    map_plot_mode: heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    listen: {}
    row: 48
    col: 0
    width: 24
    height: 13
  - title: Componente de congestión a través del tiempo
    name: Componente de congestión a través del tiempo
    model: pml_edher
    explore: precio_marginal_local
    type: looker_area
    fields: [precio_marginal_local.fecha_date, precio_marginal_local.congestion_mean]
    filters:
      precio_marginal_local.nombre_entidad: "-baja california,-baja california sur"
      precio_marginal_local.congestion_mean: "[-200, 300]"
    sorts: [precio_marginal_local.fecha_date desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${precio_marginal_local.congestion_mean}+${precio_marginal_local.energia_mean}+${precio_marginal_local.perdidas_mean}"
      label: pml
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: pml
      _type_hint: number
      is_disabled: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Fecha
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      precio_marginal_local.congestion_mean: "#D59E79"
    series_labels:
      precio_marginal_local.congestion_mean: Componente Congestión
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      precio_marginal_local.congestion_mean:
        is_active: true
    hidden_fields:
    hidden_points_if_no: []
    map_plot_mode: heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: dark
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    hidden_pivots: {}
    listen: {}
    row: 61
    col: 0
    width: 24
    height: 12
