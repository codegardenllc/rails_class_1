class ItemsController < ApplicationController
  def index
    @incomplete_items = Item.where("completed = ? OR completed IS NULL", false)
    @completed_items = Item.where(completed: true)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to items_path
  end

  def complete
    item = Item.find(params[:id])
    item.completed = true
    item.completed_at = Time.now
    item.save

    redirect_to items_path
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit!
  end
end