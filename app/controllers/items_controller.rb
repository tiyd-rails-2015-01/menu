class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def new
    @item = Item.new
  end

  def edit
  end

  def show
    redirect_to edit_item_path(@item)
  end

  def index
    Item.categorize
    @entrees = Category.where(name: "Entree").first.items
    @desserts = Category.where(name: "Dessert").first.items
    @appetizers = Category.where(name: "Appetizers").first.items
    @entree = Category.where(name: "Entree").first.name
    @appetizer=Category.where(name: "Appetizers").first.name
    @dessert=Category.where(name: "Dessert").first.name

  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to item_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:name, :price, :description, :category_name)
  end
end
