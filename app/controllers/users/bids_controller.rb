class Users::BidsController < ApplicationController
  def index
    @bids = current_user.bids
    respond_to do |format|
      format.js
    end
  end
end
