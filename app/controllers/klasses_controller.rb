class KlassesController < ApplicationController

  before_filter :per_load

  def teachers
    @teachers = @klass.teachers.page(params[:page]).per(5)
  end

  def students
    @students = @klass.students.page(params[:page]).per(5)
  end

  def index
    @klasses = Klass.order("id").page(params[:page]).per(5)
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
  #  @klass = Klass.find(params[:id])
  end

  def edit
  #  @klass = Klass.find(params[:id])
  end

  def update
    if @klass.update_attributes(params[:klass])
        redirect_to(@klass, :notice => 'Klass has successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @klass.destroy
    redirect_to klasses_url
  end

  private
  def per_load
    @klass = Klass.find_by_id(params[:id]) if params[:id]
  end
end
