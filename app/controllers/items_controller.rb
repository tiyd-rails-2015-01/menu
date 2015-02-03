class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to items_path, notice: 'Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    redirect_to items_path
  end

  def edit
    @categories = Category.all
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def index
  @entree_items = Item.all.where(category_id: 1)
    @app_items = Item.all.where(category_id: 2)
    @special_items = Item.all.where(category_id: 3)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_path, notice: 'Item was successfully destroyed.' }
    end
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
  #
  # def categories
  #   @categories = Category.all
  # end

  def item_params
    params.require(:item).permit(:name, :price, :category_id)
  end
end
