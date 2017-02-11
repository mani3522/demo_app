class AddForeignKey < ActiveRecord::Migration
  def change
    add_column :staffs, :user_id, :integer
    add_column :students, :user_id, :integer
  end
end
