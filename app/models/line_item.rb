class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :item

  validates :item_id, presence: true

  def subtract_from_inventory
    # binding.pry
    item = Item.find_by(id: item_id)
    item.inventory -= quantity
    item.save
  end
end
