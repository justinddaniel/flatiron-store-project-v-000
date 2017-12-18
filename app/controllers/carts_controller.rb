class CartsController < ApplicationController
  before_action :set_user

  def show
    # binding.pry
    redirect_to store_path if !current_user
    @cart = current_user.current_cart
  end

  def checkout
    @cart = current_user.current_cart
    @cart.checkout
    # binding.pry
    current_user.current_cart = nil
    current_user.save
    redirect_to cart_path(@cart)
  end

end
