class Cart < ActiveRecord::Base
  has_many :line_items
  has_many :items, :through => :line_items
  belongs_to :user

  def total
    t = 0
    self.line_items.each do |li|
      cost = li.quantity * li.item.price
      t = t + cost
    end
    t
  end

  def add_item(new_item_id)
    if self.items.ids.include? new_item_id
      new_item_added = LineItem.find_by(:item_id => new_item_id)
      new_item_added.quantity += 1
      new_item_added.save
      new_item_added
    else
      new_item_added = self.line_items.build(:item_id => new_item_id)
    end
  end

  def checkout
    # binding.pry
    line_items.each do |li|
      li.subtract_from_inventory
    end
    save
  end


end
