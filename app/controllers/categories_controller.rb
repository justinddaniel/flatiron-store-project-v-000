class CategoriesController < ApplicationController
  def show
    @user = current_user
    @category = Category.find_by(id: params[:id])
    @items = @category.items
  end

end
