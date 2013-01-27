class AddColumnTypiesForMessages < ActiveRecord::Migration
  def up
    add_column :messages, :typies, :string
  end

  def down
  end
end
