class AddColumnReadspeedToDepots < ActiveRecord::Migration
  def change
    add_column :depots, :readspeed, :integer
  end
end
