class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |li|
      li.integer :cart_id
      li.integer :item_id
      li.integer :quantity, :default => 1
    end
  end
end
