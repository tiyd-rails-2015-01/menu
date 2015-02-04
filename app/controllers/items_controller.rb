class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @item = Item.all
    @entree_items = Item.all.where(category_id: 2)
    @app_items = Item.all.where(category_id: 1)
    @special_items = Item.all.where(category_id: 3)
  end

  def show
    redirect_to :action => 'edit'

    # @item = Item.find(params[:id])
  end

  # GET /items/new
  def new
    @item = Item.new

  end

  # GET /items/1/edit
  def edit
    # @item = Item.find(params[:id])
  end

  # POST /bank_registers
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /items/1
  def update
  # @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to items_path, notice: "Item was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    redirect_to items_path, notice: 'Item was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:name, :description, :price, :category_id)
  end

end
