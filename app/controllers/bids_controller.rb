class BidsController < ApplicationController
  def create
    if (@bid = Bid.where(user_id: current_user, product_id: params[:product_id]).first)
      @bid.update(bid_params)
    else
      @bid = current_user.bids.new(bid_params)
      @bid[:product_id] = params[:product_id]
      @bid.save
    end
    redirect_to product_path(params[:product_id])
  end

  private

    def bid_params
      params.require(:bid).permit(:price)
    end
end
