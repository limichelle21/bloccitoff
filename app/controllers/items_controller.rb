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

  # def destroy
  # end

  private

  def item_params
    params.require(:item).permit(:body, :completed)
  end

end
