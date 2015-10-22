class LessonsController < ApplicationController
  def new
  @lesson = Lesson.new
end

def create
  @lesson = Lesson.new(lesson_params)

  if @lesson.save

  else
    render 'new'
  end
end

private
  def lesson_params
    params.require(:lesson).permit(:name, :discipline, :day, :time, :teacher)
  end
end
