class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new
    @item.body = params[:item][:body]

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to @item
    else
      flash.now[:alert] = "There was an error saving the item."
      render :new
    end
  end

  def update
  end

  def destroy
  end
end
