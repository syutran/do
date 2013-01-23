class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.integer :sort
      t.integer :depot_id
      t.integer :assignment_id
      t.integer :user_id
      t.string :typies
      t.text :title
      t.text :item_a
      t.text :item_b
      t.text :item_c
      t.text :item_d
      t.text :item_e
      t.text :item_f
      t.text :item_g
      t.text :item_h
      t.text :item_i
      t.text :item_j
      t.string :keys
      t.string :answer
      t.integer :need_time

      t.timestamps
    end
  end
end
