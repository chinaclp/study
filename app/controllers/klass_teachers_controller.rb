class KlassTeachersController < ApplicationController
  
  layout "manager"

  def new
    @teacher = Teacher.find_by_id(params[:teacher_id])  
    @klasses = Klass.all
  end

  def create
    @teacher = Teacher.find_by_id(params[:teacher_id])  
    @teacher.klasses.delete_all
    params[:klass_ids].each do |klass_id|
      KlassTeacher.create(:teacher_id => @teacher.id, :klass_id => klass_id)
    end
    redirect_to klasses_teacher_path(:id => @teacher.id)
  end
  
  def new_teacher
    @klass = Klass.find_by_id(params[:klass_id])
    @teachers = Teacher.all
  end

  def create_teacher
    @klass = Klass.find_by_id(params[:klass_id])
    @klass.teachers.delete_all
    params[:teacher_ids].each do |teacher_id|
      KlassTeacher.create(:klass_id => @klass.id, :teacher_id => teacher_id)
    end
    redirect_to teachers_klass_path(:id => @klass.id)

  end


end
