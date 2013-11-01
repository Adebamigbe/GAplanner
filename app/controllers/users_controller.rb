class UsersController < ApplicationController

  # load_and_authorize_resource except: [:create, :new]

  def index
    @users = User.all
    @title = "Sign up"
  end


  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
    @title = "Sign up"
  end


  def edit
    @user = User.find params[:id]
  end

  def create
    @user = User.new params[:user]
    @user.role = @user.role
    if @user.save
      @user.authenticate(params[:user][:password])
      redirect_to user_path(@user), notice: 'User was successfully created.'
    else
      @title = "Sign up"
      render :new
    end
  end


  def update
    if @user.update_attributes params[:user]
      redirect_to user_path(@user), notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.delete
    redirect_to user_url(@user)
  end

end