class LineItemsController < ApplicationController

  def create
    redirect_to store_path if !current_user
    if !current_user.current_cart
      current_user.create_current_cart
    end
    # binding.pry
    current_user.current_cart.add_item(params[:item_id].to_i)
    redirect_to store_path
  end
end
