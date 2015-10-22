class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :student_id, :string
  end
end
