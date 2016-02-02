class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)

    if @item.save

    else

    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
