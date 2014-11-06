class UsersController < ApplicationController

  before_filter :per_load

  def index
    @users = User.order('id desc').page(params[:page]).per(3)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to :action =>:index
    else
      render :action => "new"
    end
  end

  def show
  end

  def edit
  end

  def update
      if @user.update_attributes(params[:user])  
         redirect_to(@user, :notice => 'User was successfully updated.')
      else
         render :action => "edit"
      end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

  private
  def per_load
    @user = User.find_by_id(params[:id]) if params[:id]
  end
end
