- dashboard: hide_title_test
  title: Hide Title test
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: F1jY6wt6NrdqSmoqHFd8Tu
  elements:
  - title: Tile A
    name: Tile A
    model: salesgcpea_agustin
    explore: markets
    type: looker_grid
    fields: [markets.markets_code, markets.markets_name, markets.zone]
    sorts: [markets.markets_code]
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
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 9
