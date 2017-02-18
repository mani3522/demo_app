class RemainingSchema < ActiveRecord::Migration
  def change
      create_table :question do |t|
        t.string  :question_type
        t.integer :department_id
        t.integer :staff_id
        t.string  :content
        t.string  :content_type
        t.timestamps :created_at
        t.timestamps :updated_at
      end

      create_table :answer do |t|
        t.integer :question_id
        t.integer :staff_id
        t.string  :content
        t.timestamps :created_at
        t.timestamps :updated_at
      end

      create_table :material do |t|
        t.string     :name
        t.integer    :department_id
        t.integer    :staff_id
        t.timestamps :deleted_at
        t.binary     :content
        t.timestamps :created_at
        t.timestamps :updated_at
      end

      create_table :test do |t|
        t.string  :creator_type
        t.integer :creator_id
        t.integer :test_duration
        t.string  :type
        t.timestamps :created_at
        t.timestamps :updated_at
      end

      create_table :test_answer do |t|
        t.integer :test_id
        t.integer :student_id
        t.integer :question_id
        t.string  :answer
        t.timestamps :created_at
        t.timestamps :updated_at
      end

      create_table :study do |t|
        t.boolean :group
        t.string  :create_by
        t.timestamps :created_at
        t.timestamps :updated_at
      end

      create_table :study_material do |t|
        t.integer :study_id
        t.integer :material_id
        t.timestamps :created_at
        t.timestamps :updated_at
      end

      create_table :participant do |t|
        t.string  :event_type
        t.integer :event_id
        t.integer :student_id
        t.timestamps :created_at
        t.timestamps :updated_at
      end
  end
end
