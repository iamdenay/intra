class StudentsController < ApplicationController
  def profile

  end
  def lessons_reg
    @student = Student.find(params[:student_id])
    @lessons = @student.lessons
  end
end
