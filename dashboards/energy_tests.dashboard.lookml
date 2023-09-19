- dashboard: energy_tests
  title: Energy tests
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: mkmiQPIByx6j6h3Pz96CxR
  elements:
  - title: Energy prices 2022
    name: Energy prices 2022
    model: pml_edher
    explore: precio_marginal_local
    type: marketplace_viz_calendar_heatmap::calendar_heatmap-marketplace
    fields: [precio_marginal_local.energia_mean, precio_marginal_local.fecha_date]
    fill_fields: [precio_marginal_local.fecha_date]
    filters:
      precio_marginal_local.fecha_year: '2022'
    sorts: [precio_marginal_local.energia_mean desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    color_picker: ["#e81c0b"]
    rounded: true
    label_year: true
    label_month: true
    viz_show_legend: true
    focus_tooltip: true
    outline_weight: 0.3
    outline_color: "#f4fff9"
    cell_reducer: 0.8
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 0
    y_axes: []
    listen: {}
    row: 3
    col: 0
    width: 24
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Testing Text Tile","bold":true}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 8
    width: 9
    height: 3
  - title: Testing drill
    name: Testing drill
    model: pml_edher
    explore: precio_marginal_local
    type: looker_grid
    fields: [precio_marginal_local.nombre_entidad, precio_marginal_local.pml_mean]
    filters:
      precio_marginal_local.fecha_year: '2022'
    sorts: [precio_marginal_local.pml_mean desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    color_picker: ["#e81c0b"]
    rounded: true
    label_year: true
    label_month: true
    viz_show_legend: true
    focus_tooltip: true
    outline_weight: 0.3
    outline_color: "#f4fff9"
    cell_reducer: 0.8
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    y_axes: []
    listen: {}
    row: 9
    col: 0
    width: 24
    height: 6
  - title: Testing tables
    name: Testing tables
    model: pml_edher
    explore: precio_marginal_local
    type: looker_grid
    fields: [precio_marginal_local.nombre_entidad, precio_marginal_local.energia_mean,
      precio_marginal_local.henry_hub_mean, precio_marginal_local.temperatura_mean,
      precio_marginal_local.clave_nodo, precio_marginal_local.congestion_mean, precio_marginal_local.count,
      precio_marginal_local.pml_mean, precio_marginal_local.perdidas_mean]
    sorts: [precio_marginal_local.energia_mean desc]
    limit: 20
    column_limit: 50
    show_view_names: false
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: false
    show_row_totals: false
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      precio_marginal_local.energia_mean:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [precio_marginal_local.energia_mean]}, {type: greater
          than, value: 3, background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [precio_marginal_local.henry_hub_mean]}]
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
    defaults_version: 1
    y_axes: []
    truncate_column_names: false
    note_state: collapsed
    note_display: above
    note_text: "*Energy components from each Node in Mexico*"
    listen: {}
    row: 15
    col: 0
    width: 24
    height: 9
  - title: Testing tables (Copy)
    name: Testing tables (Copy)
    model: pml_edher
    explore: precio_marginal_local
    type: looker_grid
    fields: [precio_marginal_local.nombre_entidad, precio_marginal_local.energia_mean,
      precio_marginal_local.henry_hub_mean, precio_marginal_local.temperatura_mean,
      precio_marginal_local.clave_nodo, precio_marginal_local.congestion_mean, precio_marginal_local.count,
      precio_marginal_local.pml_mean, precio_marginal_local.perdidas_mean]
    sorts: [precio_marginal_local.energia_mean desc]
    limit: 20
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${precio_marginal_local.energia_mean} + ${precio_marginal_local.congestion_mean}\
        \ + ${precio_marginal_local.perdidas_mean}"
      label: PML
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: pml
      _type_hint: number
    - category: table_calculation
      expression: if(${pml}=${precio_marginal_local.pml_mean},"🥴", "😎")
      label: Okay?
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: okay
      _type_hint: string
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: false
    show_row_totals: false
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      precio_marginal_local.energia_mean:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [precio_marginal_local.energia_mean]}, {type: greater
          than, value: 3, background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [precio_marginal_local.henry_hub_mean]}]
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
    defaults_version: 1
    y_axes: []
    truncate_column_names: false
    note_state: collapsed
    note_display: above
    note_text: "*Energy components from each Node in Mexico*"
    listen: {}
    row: 24
    col: 0
    width: 24
    height: 9
  - title: Testing tables (Copy 3)
    name: Testing tables (Copy 3)
    model: pml_edher
    explore: precio_marginal_local
    type: looker_grid
    fields: [precio_marginal_local.nombre_entidad, precio_marginal_local.energia_mean,
      precio_marginal_local.henry_hub_mean, precio_marginal_local.temperatura_mean,
      precio_marginal_local.clave_nodo, precio_marginal_local.congestion_mean, precio_marginal_local.count,
      precio_marginal_local.pml_mean, precio_marginal_local.perdidas_mean]
    sorts: [precio_marginal_local.energia_mean desc]
    limit: 20
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: false
    show_row_totals: false
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      precio_marginal_local.energia_mean:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [precio_marginal_local.energia_mean]}, {type: greater
          than, value: 3, background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [precio_marginal_local.henry_hub_mean]}]
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
    defaults_version: 1
    y_axes: []
    truncate_column_names: false
    note_state: collapsed
    note_display: above
    note_text: "*Energy components from each Node in Mexico*"
    listen: {}
    row: 33
    col: 0
    width: 24
    height: 9
  - title: Table from Look
    name: Table from Look
    model: pml_edher
    explore: precio_marginal_local
    type: looker_grid
    fields: [precio_marginal_local.nombre_entidad, precio_marginal_local.energia_mean,
      precio_marginal_local.henry_hub_mean, precio_marginal_local.temperatura_mean,
      precio_marginal_local.clave_nodo, precio_marginal_local.congestion_mean, precio_marginal_local.count,
      precio_marginal_local.pml_mean, precio_marginal_local.perdidas_mean]
    sorts: [precio_marginal_local.energia_mean desc]
    limit: 20
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: false
    show_row_totals: false
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      precio_marginal_local.energia_mean:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [precio_marginal_local.energia_mean]}, {type: greater
          than, value: 3, background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [precio_marginal_local.henry_hub_mean]}]
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
    defaults_version: 1
    y_axes: []
    truncate_column_names: false
    column_order: ["$$$_row_numbers_$$$", precio_marginal_local.nombre_entidad, precio_marginal_local.henry_hub_mean,
      precio_marginal_local.count, precio_marginal_local.clave_nodo, precio_marginal_local.temperatura_mean,
      precio_marginal_local.energia_mean, precio_marginal_local.pml_mean, precio_marginal_local.congestion_mean,
      precio_marginal_local.perdidas_mean]
    listen: {}
    row: 42
    col: 0
    width: 24
    height: 8
  - title: Testing tables (Copy 4)
    name: Testing tables (Copy 4)
    model: pml_edher
    explore: precio_marginal_local
    type: looker_grid
    fields: [precio_marginal_local.nombre_entidad, precio_marginal_local.energia_mean,
      precio_marginal_local.henry_hub_mean, precio_marginal_local.temperatura_mean,
      precio_marginal_local.clave_nodo, precio_marginal_local.congestion_mean, precio_marginal_local.count,
      precio_marginal_local.pml_mean, precio_marginal_local.perdidas_mean]
    sorts: [precio_marginal_local.energia_mean desc]
    limit: 20
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${precio_marginal_local.energia_mean} + ${precio_marginal_local.congestion_mean}\
        \ + ${precio_marginal_local.perdidas_mean}"
      label: PML
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: pml
      _type_hint: number
    - category: table_calculation
      expression: if(${pml}=${precio_marginal_local.pml_mean},"🥴", "😎")
      label: Okay?
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: okay
      _type_hint: string
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: false
    show_row_totals: false
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      precio_marginal_local.energia_mean:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [precio_marginal_local.energia_mean]}, {type: greater
          than, value: 3, background_color: "#1A73E8", font_color: !!null '', color_application: {
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2, palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab},
        bold: false, italic: false, strikethrough: false, fields: [precio_marginal_local.henry_hub_mean]}]
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
    defaults_version: 1
    y_axes: []
    truncate_column_names: false
    column_order: ["$$$_row_numbers_$$$", precio_marginal_local.nombre_entidad, precio_marginal_local.clave_nodo,
      okay, pml, precio_marginal_local.energia_mean, precio_marginal_local.henry_hub_mean,
      precio_marginal_local.temperatura_mean, precio_marginal_local.congestion_mean,
      precio_marginal_local.count, precio_marginal_local.pml_mean, precio_marginal_local.perdidas_mean]
    series_column_widths:
      pml: 82
      precio_marginal_local.clave_nodo: 85
    note_state: collapsed
    note_display: above
    note_text: "*Energy components from each Node in Mexico*"
    row: 50
    col: 0
    width: 24
    height: 9
