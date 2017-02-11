class CreateStaffSubjects < ActiveRecord::Migration
  def change
    create_table :staff_subjects do |t|
      t.integer :staff_id
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
