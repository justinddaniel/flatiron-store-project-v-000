class OrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |oi|
      oi.integer :item_id
      oi.integer :order_id
      oi.integer :quantity
      oi.integer :total_line_price
    end
  end
end
