class UsersController < ApplicationController

  layout "manager", :except => [:show, :face]

  def show
    @user = User.find_by_id(params[:id])
  end

  def face
    @user = User.find_by_id(params[:id]) if params[:id]
  end

  def upload
    @user = User.find_by_id(params[:id]) if params[:id]
    @user.photo = params[:user][:photo]
    @user.save
    #   @user.update_attributes(user_params)
    redirect_to(user_path(@user), :notice => 'photo was successfully updated.')
  end

#  private

#  def user_params
#    params.require(:user).permit(:photo)
#  end

end
