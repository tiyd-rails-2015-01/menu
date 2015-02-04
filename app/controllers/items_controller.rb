class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_meal, except: [:index]

  def index
    @items = Item.all
    # load_my_selection  do this instead of before action
  end

  def new
    @item = Item.new
  end

  def show
    redirect_to edit_item_path(@item)
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @item.update(item_params)
      redirect_to items_path, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path, notice: 'Item was successfully destroyed.'
  end

  private

  def set_meal
    session[:item] = Item.find(params[:id]).name
    # redirect_to items_path   index doesn't have an id, it's a collection, would blow up if it wasn't except index
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :section_id)
  end
end
