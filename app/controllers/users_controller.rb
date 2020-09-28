class UsersController < ApplicationController
  protect_from_forgery :except => [:update]
  def index
    @users = User.all
  end

  def show
    @user = User.getUserDetail(params[:id])
  end

  def edit
    @user = User.getUserDetail(params[:id])
  end

  def update
    User.updateUserInfo(params[:id],params[:name],params[:age],params[:profile])
    redirect_to action: :index
  end

  def destroy
    User.deleteUserInfo(params[:id])
    redirect_to :action => "index"
  end
  
  def new
    @user = User.new
  end
  
  def create
  end

  def store
    puts "Store!!"
    user = User.new(name:params[:name],age:params[:age],profile:params[:profile])
    user.save
    redirect_to :action => "index"
  end

end
