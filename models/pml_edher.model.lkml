connection: "energy_price_mx"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: pml_edher_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: pml_edher_default_datagroup


explore: precio_marginal_local {}
