class CategoriesController < ApplicationController
  def new
  end
  def create
    @catagory = Catagory.new(item_params)
    respond_to do |format|
      if @catagory.save
        format.html { redirect_to catagory_path, notice: 'Catagory was successfully created.' }
        #  format.json { render :show, status: :created, location: @catagory }
      else
        format.html { render :new }
        #  format.json { render json: @catagory.errors, status: :unprocessable_entity }
      end
    end
  end
end
