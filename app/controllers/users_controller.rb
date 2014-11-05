class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    respond_to do |format|
      format.html
    end    
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html{ redirect_to :action =>:index}
      else
        format.html{ render :action => "new"}
      end
    end
  end

  def show
    @user = User.find(users[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    respond_to do |format|  
      if @user.update_attributes(params[:user])  
        format.html  { redirect_to(@user, :notice => 'User was successfully updated.') }
      else
        format.html{ render :action => "edit"}
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html{ redirect_to users_url}
    end
  end

end
