class ManagerController < ApplicationController
   
  layout "manager", :only => [:index]

  before_filter :authenticate_user!

  def index
  end

end
