class ChangeColumnFriendTypeForCircles < ActiveRecord::Migration
  def up
    change_column :circles,:friend,:integer
  end

  def down
  end
end
