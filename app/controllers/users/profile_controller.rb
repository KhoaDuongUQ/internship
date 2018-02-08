class Users::ProfileController < ApplicationController
  def index
    @user = current_user
    respond_to do |format|
      format.js
    end
  end
end
