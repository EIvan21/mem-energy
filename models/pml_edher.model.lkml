connection: "pml_energia"


# include all the views
include: "/views/**/*.view.lkml"

include: "/dashboards/**/*"
week_start_day: sunday
datagroup: pml_edher_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "240 hours"
}

persist_with: pml_edher_default_datagroup


explore: precio_marginal_local {}
explore: transactions {}
explore: users {}
explore: derived_table_ua {}
