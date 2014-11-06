class KlassesController < ApplicationController

  def index
    @klasses = Klass.all
  end

  def new
    @klass = Klass.new
  end

  def create
    @klass = Klass.new(params[:klass])
    if @klass.save
      redirect_to :action=> :index
    else
      render :action=> "new"
    end
  end

  def show
    @klass = Klass.find(params[:id])
  end

  def edit
    @klass = Klass.find(params[:id])
  end

  def update
    @klass = Klass.find(params[:id])
    if @klass.update_attributes(params[:klass])
        redirect_to(@klass, :notice => 'Klass has successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destory
    @klass = Klass.find(params[:id])
    @klass.destroy
    redirect_to klasses_url
  end
end
