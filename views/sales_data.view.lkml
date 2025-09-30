# The name of this view in Looker is "Sales Data"
view: sales_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `testsubtoal.sales_data` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Asset Class" in Explore.

  dimension: asset_class {
    type: string
    sql: ${TABLE}.asset_class ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: sale {
    type: number
    sql: ${TABLE}.sale ;;
  }

  dimension: scheme_type {
    type: string
    sql: ${TABLE}.scheme_type ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: salecount {
    type: sum
    sql: ${sale} ;;
  }
}
