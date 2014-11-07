class TeachersController < ApplicationController

  before_filter :per_load

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(params[:teacher])
    if @teacher.save
      redirect_to :action => :index
    else
      render :action => 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @teacher.update_attributes(params[:teacher])
      redirect_to(@teacher,:notice => 'teacher has success fully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_url
  end

  private
  def per_load
    @teacher = Teacher.find_by_id(params[:id]) if params[:id]
  end

end
