class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy]

  # GET /foods
  # GET /foods.json
  def index
    @items = Item.all
  end

  # GET /foods/new
  def new
    @item = Item.new
  end

  def edit
  end


  # POST /foods
  # POST /foods.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to root_path, notice: 'Item was successfully created.' }
        # format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        # format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    if @item.update(item_params)
      redirect_to root_path, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_path, notice: 'Item was successfully destroyed.' }
      # format.json { head :no_content }
    end
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
