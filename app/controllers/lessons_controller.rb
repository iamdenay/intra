class LessonsController < ApplicationController
  def new
  @lesson = Lesson.new
end

def create
  @student = current_student
  @lesson = @student.lessons.create(lesson_params)
  
  if @lesson.save
    redirect_to student_root_path
  else
    render 'new'
  end
end

private
  def lesson_params
    params.require(:lesson).permit(:name, :discipline, :room, :creditsNumber, :day, :time, :teacher)
  end
end
