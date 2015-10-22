class CreateLessonClasses < ActiveRecord::Migration
  def change
    create_table :lesson_classes do |t|

      t.timestamps null: false
    end
  end
end
