class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]
  def new
    @item = Item.new
    @catagory_index = Catagory.all
  end
  def index
    @items = Item.all
    # @catagory_index = Catagory.all
  end

  def show
    redirect_to action: "edit"
  end


  def edit
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


  private def item_params
    params.require(:item).permit(:name, :price, :description, :catagory_id)
  end

  private def set_item
    @item = Item.find(params[:id])
  end

end
