class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.integer :user_id
      t.integer :category_id
      t.integer :circle_id
      t.string :typies
      t.integer :timelimit
      t.datetime :validate
      t.datetime :invalidate
      t.text :discription

      t.timestamps
    end
  end
end
