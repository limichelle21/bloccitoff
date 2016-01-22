class UsersController < ApplicationController


  def show
  	@user = current_user
  	@new_item = Item.new
  	@items = @user.items
  end

end
