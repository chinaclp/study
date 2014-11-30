class ManagerController < ApplicationController
   
  layout "manager"

  before_filter :authenticate_user!

  def index
  end

end
