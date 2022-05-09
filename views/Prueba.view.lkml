  # If necessary, uncomment the line below to include explore_source.
# include: "ecommerce_balcazar.model.lkml"

view: prueba {
  derived_table: {
    explore_source: order_items {
      column: created_year { field: orders.created_year }
      column: count { field: orders.count }
      column: user_id {
        field: order_items.user_id
      }
      column: lifetime_number_of_orders {
        field: order_items.order_count
      }
      column: lifetime_customer_value {
        field: order_items.total_revenue
      }
    }
  }
  dimension: created_year {
    type: date_year
  }
  dimension: count {
    type: number
  }
  dimension: user_id {
    hidden: yes
  }
  dimension: lifetime_number_of_orders {
    type: number
  }
  dimension: lifetime_customer_value {
    type: number
  }
}
