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
  end

  def destory

  end
end
