class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /item
  # GET /items.json
  def index
    @items = Item.all
    @category_list = Category.list_categories

    @description_id_pairs = Category.get_description_key_pairs
    @number_of_categories = @description_id_pairs.length
  end

  # GET /item/new
  def new
    @item = Item.new
    @description_id_pairs = Category.get_description_key_pairs

  end

  def show
    redirect_to edit_item_path
  end

  # POST /item
  # POST /items.json
  def create
    @description_id_pairs = Category.get_description_key_pairs

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

  # PATCH/PUT /item/1
  # PATCH/PUT /item/1.json
  def update
    @description_id_pairs= Category.get_description_key_pairs

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

  # DELETE /item/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
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
    params.require(:item).permit(:image, :price, :name, :description, :category_key)
  end

end
