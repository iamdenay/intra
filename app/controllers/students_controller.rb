class StudentsController < ApplicationController
  def profile
    @cur = 0

    @student = current_student
    @lessons = @student.lessons.all
    @lessons.each do |l|

      @credits = l.creditsNumber / 3 rescue 0
      @student.currentCredits += @credits
    end
  end
  def schedule
    @student = current_student
    @lessons = @student.lessons.all
  end
end
