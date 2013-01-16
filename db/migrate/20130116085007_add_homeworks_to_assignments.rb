class AddHomeworksToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :homework, :text
  end
end
