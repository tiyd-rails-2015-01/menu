class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]
  before_action :store_item, only: [:edit]
  def new
    @item = Item.new
    @catagory_index = Catagory.all
  end

  def index
    @items = Item.all
    #load_my_select
    # @catagory_index = Catagory.all
  end

  def show
    redirect_to action: "edit"
  end


  def edit
    session[item_params] = true
  end

  def create

    @item = Item.new(item_params)
    respond_to do |format|
      if @item.save
        format.html { redirect_to items_path, notice: 'Food Item was successfully created.' }
      #  format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
      #  format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to items_path, notice: 'Food Item was successfully updated.' }
        #format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
      #  format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_path, notice: 'Food Item was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  def store_item
    session[:item_id] = params[:id]
  end


  private def item_params
    params.require(:item).permit(:name, :price, :description, :catagory_id)
  end

  private def set_item
    @item = Item.find(params[:id])
  end

end
