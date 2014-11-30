class StudentsController < ApplicationController

  layout "manager"

  before_filter :per_load

  def index
    @students = Student.order('id desc').page(params[:page]).per(3)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to :action =>:index
    else
      render :action => "new"
    end
  end

  def show
  end

  def edit
  end

  def update
      if @student.update_attributes(params[:student])  
         redirect_to(@student, :notice => 'Student was successfully updated.')
      else
         render :action => "edit"
      end
  end

  def destroy
    @student.destroy
    redirect_to students_url
  end

  private
  def per_load
    @student = Student.find_by_id(params[:id]) if params[:id]
  end
end
