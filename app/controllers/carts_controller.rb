class CartsController < ApplicationController
  before_action :set_user

  def show
    # binding.pry
    redirect_to store_path if !current_user
    @cart = current_user.current_cart
  end

  def checkout

  end

end
