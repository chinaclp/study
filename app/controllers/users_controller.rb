class UsersController < ApplicationController

  def index
 #   @users = User.all
    @users = User.order('id desc').page(params[:page]).per(3)
  end

  def new
    @user = User.new
  end

  def create
    @klass -Klass.find(params[:klass][:klass_id])
    @user = @klass.user.create(params[:user])
      if @user.save
         redirect_to :action =>:index
      else
         render :action => "new"
      end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update_attributes(params[:user])  
         redirect_to(@user, :notice => 'User was successfully updated.')
      else
         render :action => "edit"
      end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url
  end

end
