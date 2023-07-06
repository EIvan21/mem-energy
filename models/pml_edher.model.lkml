connection: "energy-gcpea"

# include all the views
include: "/views/**/*.view.lkml"
include: "/dashboards/*.dashboard"

datagroup: pml_edher_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pml_edher_default_datagroup


explore: precio_marginal_local {}
