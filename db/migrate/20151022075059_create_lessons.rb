class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name, null: false
      t.string :room, null:false
      t.integer :creditsNumber,null:false
      t.string :discipline,null:false
      t.string :day,null:false
      t.string :time,null:false
      t.string :teacher,null:false
      t.references :student_id, index:true, foreign_key: true

      t.timestamps null: false
    end
  end
end
