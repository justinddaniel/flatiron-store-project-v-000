class Item < ActiveRecord::Base
  belongs_to :category
  has_many :line_items

  def self.available_items
    avail_items = []
    Item.all.each do |item|
      if item.inventory > 0
        avail_items << item
      end
    end
    avail_items
  end

  def subtract_from_inventory
    inventory -= 1
    inventory
  end

end
