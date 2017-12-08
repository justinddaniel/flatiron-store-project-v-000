class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |c|
      c.integer :user_id
      c.string :status, :default => "unsubmitted"
      c.boolean :current_cart, :default => false
    end
  end
end
