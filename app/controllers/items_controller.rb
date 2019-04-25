class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :user_id, :description, :state, :price, :local)
  end
end
