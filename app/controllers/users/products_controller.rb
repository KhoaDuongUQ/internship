class Users::ProductsController < ApplicationController
  def index
    if user_signed_in?
      @products = current_user.products
    end
  end
  def show
    @product = current_user.products.last
  end
end
