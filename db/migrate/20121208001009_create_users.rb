class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :face_url
      t.string :address
      t.string :cellphone
      t.string :telephone
      t.string :industry
      t.date :birth
      t.text :discription

      t.timestamps
    end
  end
end
