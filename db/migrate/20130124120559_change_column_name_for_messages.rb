class ChangeColumnNameForMessages < ActiveRecord::Migration
  def up
    rename_column :messages, :valid, :act
  end

  def down
  end
end
