class KlassTeachersController < ApplicationController
  
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

end
