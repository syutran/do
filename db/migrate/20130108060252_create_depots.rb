class CreateDepots < ActiveRecord::Migration
  def change
    create_table :depots do |t|
      t.integer :owner_id
      t.integer :user_id
      t.integer :category_id
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
      t.integer :need_time

      t.timestamps
    end
  end
end
