class StudentAddForeignKey < ActiveRecord::Migration
  def change
      add_column :students, :department_id, :integer
  end
end
