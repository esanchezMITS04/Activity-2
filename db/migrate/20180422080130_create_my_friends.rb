class CreateMyFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :my_friends do |t|
      t.string :fullname
      t.integer :age
      t.date :birthdate
      t.float :salary
      t.text :motto

      t.timestamps
    end
  end
end
