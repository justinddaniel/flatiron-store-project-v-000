class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |o|
      o.integer :user_id
    end
  end
end
