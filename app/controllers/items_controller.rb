class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def home
    @courses = Course.all
    @items = Item.all
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
  end

  def edit
  end

  def destroy
    @item.destroy
      redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  def update
    if @item.update(item_params)
      redirect_to root_path, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def create
    @item = Item.new(item_params)
      if @item.save
        redirect_to root_path, notice: 'Item was successfully created.'
      else
        render :new
      end
  end

  def item_params
    params.require(:item).permit(:item_name, :item_price, :item_description, :course_id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
