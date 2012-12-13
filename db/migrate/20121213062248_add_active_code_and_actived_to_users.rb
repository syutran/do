class AddActiveCodeAndActivedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :active_code, :string
    add_column :users, :act, :boolean
  end
end
