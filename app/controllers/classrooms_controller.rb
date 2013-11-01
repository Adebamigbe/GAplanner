class ClassroomsController < ApplicationController

  # load_and_authorize_resource

  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find params[:id]
  end

  def new
    @classroom = Classroom.new
  end

  def edit
     @classroom = Classroom.find params[:id]
  end

  def create
    @classroom = Classroom.new params[:classroom]
    if @classroom.save
      redirect_to @classroom, notice: 'Classroom created.'
    else
      render :new
    end
  end

  def update
    if @classroom.update_attributes params[:classroom]
      redirect_to @classroom, notice: 'Classroom updated.'
    else
      render :edit
    end
  end

  def destroy
    @classroom.delete
    redirect_to classrooms_url
  end

end
