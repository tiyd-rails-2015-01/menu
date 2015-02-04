class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]
  # before_action :store_item, only: [:edit]

  def index
    @items = Item.all
  end

  def home
  end

  def new
    @item = Item.new
  end

  def show
  end

  def edit
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
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end



  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :price, :description, :course_id)
    end

    # def store_item
    #   session[:item] = params[:id]
    # end

  end
