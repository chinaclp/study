class CatalogsController < ApplicationController

  layout "manager"

  def index
    @catalogs = Catalog.all
  end

  def new
    @catalog = Catalog.new
  end

  def create
    @catalog = Catalog.new(params[:catalog])
    if @catalog.save
      redirect_to :action =>:index
    else
      render :action => "new"
    end
  end

  def show
    @catalog = Catalog.find(params[:id])
  end

  def edit
    @catalog = Catalog.find(params[:id])
  end

  def update
    @catalog = Catalog.find(params[:id])
    if @catalog.update_attributes(params[:catalog])  
      redirect_to(@catalog, :notice => 'Catalog was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @catalog = Catalog.find(params[:id])
    @catalog.destroy
    redirect_to catalogs_path
  end

end
