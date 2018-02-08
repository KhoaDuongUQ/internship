class BidsController < ApplicationController
  before_action :set_bid
  def create
    @bid.price = bid_params[:price]
    redirect_to product_path(params[:product_id]) if @bid.save!
  end

  def update
    redirect_to product_path(params[:product_id]) if @bid.update(bid_params)
  end

  def destroy
    raise
    @bid.destroy
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path }
      format.json { head :no_content }
    end
  end

  private

  def set_bid
    @bid = Bid.find_or_initialize_by(user_id: current_user.id, product_id: params[:product_id])
  end

  def bid_params
    params.require(:bid).permit(:price)
  end
end
