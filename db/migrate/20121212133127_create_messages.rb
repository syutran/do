class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :from_id
      t.integer :to_id
      t.string :title
      t.text :message
      t.boolean :valid
      t.datetime :create_time

      t.timestamps
    end
  end
end
