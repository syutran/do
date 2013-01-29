class ChangeColumnFriendForCircles < ActiveRecord::Migration
  def up
    rename_column :circles, :friend, :friend_id
  end

  def down
  end
end
