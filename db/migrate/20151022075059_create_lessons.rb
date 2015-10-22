class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :room
      t.integer :creditsNumber
      t.string :discipline
      t.string :day
      t.string :time
      t.string :teacher

      t.timestamps null: false
    end
  end
end
