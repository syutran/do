class ChangeSupCategoryFieldForCategory < ActiveRecord::Migration
  def change
    rename_column :categories, :sup_category, :parent_id
  end

end
