class CreateCircles < ActiveRecord::Migration
  def change
    create_table :circles do |t|
      t.integer :user_id
      t.string :title
      t.integer :friend
      t.string :friend_name
      t.text :discription

      t.timestamps
    end


  end
end
