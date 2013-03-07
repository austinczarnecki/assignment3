class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	# raise params.to_yaml #in order to see what's in the params hash, forces ruby to throw an error
    @user = User.create(params[:user])
    redirect_to users_path
  end

  def edit
  	# @user = User.find()
  	@user = User.find(params[:id])
  end 

  def update
  	@user = User.find(params[:id])
  	@user.update_attributes(params[:user])
  	redirect_to users_path
  end

end