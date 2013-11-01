class CoursesController < ApplicationController

  # load_and_authorize_resource

  def index
    @courses = Course.all
  end


  def show
    @course = Course.find params[:id]
  end

  def new
    @course = Course.new
    # (:user_id => params[:user_id])
  end

  def edit
    @course = Course.find params[:id]
  end

  def create
    @course = Course.new params[:course]
    if @course.save
      redirect_to course_path(@course), notice: 'Course created.'
    else
      render :new
    end
  end

  def update
    @course = Course.find params[:id]
    if @course.update_attributes params[:course]
      redirect_to course_path(@course), notice: 'Course updated.'
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find params[:id]
    @course.delete
    redirect_to courses_url
  end

  def subscribe
    course = Course.find params[:course_id]
    current_user.courses << course
    redirect_to root_url
  end

end

