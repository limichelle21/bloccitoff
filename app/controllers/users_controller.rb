class UsersController < ApplicationController

  def show
  	@user = current_user || User.find(params[:id])
	# @user = User.find(params[:id]) 
	@items = @user.items
  end

end
