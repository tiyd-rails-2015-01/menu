class ItemsController < ApplicationController

  def index
    @item = Item.all
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
  end

  # GET /steps/new
  def new
    @item = Item.new
  end

  # GET /steps/1/edit
  def edit
  end

  # POST /steps
  # POST /steps.json
  def create
    @item = Item.new(name, price, description, category_id)

    respond_to do |format|
      if @item.save
        format.html { redirect_to root_path, notice: 'Item was successfully created.' }
        # format.json { render :show, status: :created, location: @step }
      else
        format.html { render :new }
        # format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps/1
  # PATCH/PUT /steps/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to root_path, notice: 'Item was successfully updated.' }
        # format.json { render :show, status: :ok, location: @step }
      else
        format.html { render :edit }
        # format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Item was successfully destroyed.' }
      # format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :price, :decription, :category_id)
    end
end
