class ItemsController < ApplicationController
  before_action :set_item, only: [ :edit, :update, :destroy]

  # GET /weights
  # GET /weights.json
  def index
      @items = Item.all
  end


  # GET /exercises/new
  def new
    @item = Item.new
  end

  # GET /exercises/1/edit
  def edit
  end

  # POST /exercises
  # POST /exercises.json
  def create
    @item = Item.new(item_params)
      if @item.save
        redirect_to root_path, notice: 'Item was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /exercises/1
  # PATCH/PUT /exercises/1.json
  def update
    if @item.update(item_params)
      redirect_to root_path, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /weights/1
  # DELETE /weights/1.json
  def destroy
    @item.destroy
     redirect_to root_path, notice: 'Item was successfully destroyed.'
  end


  # Use callbacks to share common setup or constraints between actions.
  private def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  private def item_params
    params.require(:item).permit(:name, :description, :price, :course_id)
  end

end
