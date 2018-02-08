class Users::ProductsController < ApplicationController
  def index
    @products = current_user.products if user_signed_in?
    respond_to do |format|
      format.js
    end
  end
end
