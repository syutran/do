class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :sup_category
      t.string :tags
      t.integer :user_id
      t.text :discription

      t.timestamps
    end
  end
end
