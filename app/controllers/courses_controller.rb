class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update, :destroy]


  def index
    @courses = Course.all
  end

  # GET /exercises/new
  def new
    @course = Course.new
  end

  # GET /exercises/1/edit
  def edit
  end

  # POST /exercises
  # POST /exercises.json
  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to root_path, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /exercises/1
  # PATCH/PUT /exercises/1.json
  def update
      if @course.update(course_params)
       redirect_to route_path, notice: 'Course was successfully updated.'
      else
       render :edit
      end
  end

  # DELETE /weights/1
  # DELETE /weights/1.json
  def destroy
    @course.destroy
    redirect_to @course, notice: 'Course was successfully destroyed.'
  end


  # Use callbacks to share common setup or constraints between actions.
  private def set_course
    @course = Course.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  private def course_params
    params.require(:course).permit(:name)
  end

end
