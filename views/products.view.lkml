view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  # dimension: product_image {
  #   sql: ${id} ;;
  # # html: <img src="https://www.altostrat.com/product_images/{{ value }}.jpg" /> ;;
  #   html: <a href="default.asp"><img src="smiley.gif" alt="HTML tutorial" style="width:42px;height:42px;"></a> ;;
  # }
  dimension: product_link {
    sql: ${id} ;;
   link: {
     label: "PRODUCT_LINK"
    url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.vox-cdn.com%2Fthumbor%2F1ICYd2LEdSpY3Ct6RNGndd_qJ4E%3D%2F0x0%3A1920x1080%2F1400x933%2Ffilters%3Afocal(807x387%3A1113x693)%3Ano_upscale()%2Fcdn.vox-cdn.com%2Fuploads%2Fchorus_image%2Fimage%2F72009235%2Fcaptain_pikachu.6.jpg&tbnid=L1tGj3BaGhACnM&vet=12ahUKEwjxsfmps8KCAxWbSmwGHW7DB-MQMygFegQIARB4..i&imgrefurl=https%3A%2F%2Fwww.polygon.com%2Fpokemon%2F23613332%2Fpokemon-anime-new-pikachu-professor-friede&docid=mHCtUi_QEi8J3M&w=1400&h=933&q=pikachu&ved=2ahUKEwjxsfmps8KCAxWbSmwGHW7DB-MQMygFegQIARB4"
   }
  }
#   dimension: field_is_pending{
#     html: {% if orders.status._value == 'pending'%}
#     "yes"
#     {% endif %} ;;
# }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
