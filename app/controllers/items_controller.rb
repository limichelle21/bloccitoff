class ItemsController < ApplicationController
  # def index
  #   @items = Item.all
  # end

  def new
    @item = Item.new
  end

  # def show
  #   @item = Item.find(params[:id])
  # end

  def create
    @user = current_user
    @item = @user.items.build(item_params)
    

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to user_path(@user)
    else
      flash.now[:alert] = "There was an error saving the item."
      render :new
    end
  end

  # def update
  # end

  def destroy
    @user = current_user
    @item = @user.items.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item was completed!"
    else
      flash[:error] = "There was an error deleting the item."
    end

    respond_to do |format|
      format.html
      format.js
    end

  end


  private

  def item_params
    params.require(:item).permit(:body, :completed)
  end

end
