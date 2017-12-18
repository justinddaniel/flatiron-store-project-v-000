class StoreController < ApplicationController

  def index
    @user = current_user
    @categories = Category.all
    @available_items = Item.available_items
  end

end
