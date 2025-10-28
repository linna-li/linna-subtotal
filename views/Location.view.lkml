view: Location {
  sql_table_name: `testsubtoal.sales_data_enhanced` ;;


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: asset_class {
    type: string
    label: "Asset Class"
    sql: ${TABLE}.asset_class ;;
  }

  dimension: scheme_type {
    type: string
    label: "Scheme Type"
    sql: ${TABLE}.scheme_type ;;
  }

  dimension: date {
    type: string
    label: "Date (MM-DD)"
    sql: ${TABLE}.Date ;;
  }

  dimension: scorecard_rm_zone {
    type: string
    label: "Scorecard RM Zone"
    sql: ${TABLE}.scorecard_rm_zone ;;
  }

  dimension: scorecard_rm_replan {
    type: string
    label: "Scorecard RM Replan"
    sql: ${TABLE}.scorecard_rm_replan ;;
  }

  dimension: scorecard_rm_cluster_sales {
    type: string
    label: "Scorecard RM Cluster Sales"
    sql: ${TABLE}.scorecard_rm_cluster_sales ;;
  }

  dimension: scorecard_rm_location {
    type: string
    label: "TEST-Location #"
    sql: ${TABLE}.scorecard_rm_location ;;
  }

  dimension: scorecard_rm_type_data {
    type: string
    label: "Scorecard RM Type Data"
    sql: ${TABLE}.scorecard_rm_type_data ;;
  }


  measure: total_sales {
    type: sum
    label: "Total Sales"
    sql: ${TABLE}.sale ;;
    value_format_name: decimal_0 #
  }

  measure: max_sales {
    type: max
    label: "MAX Sales"
    sql: ${TABLE}.sale ;;
    value_format_name: decimal_0 #
  }

  measure: count {
    type: count
    label: "Count of Rows"
  }
}
