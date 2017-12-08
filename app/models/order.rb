class Order < ActiveRecord::Base
  belongs_to :current_cart, :class_name => "Cart", :foreign_key => "cart_id"
  belongs_to :user
end
