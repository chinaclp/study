class UsersController < ApplicationController

  layout "manager"

  def show
    @user = User.find_by_id(params[:id])
  end

end
