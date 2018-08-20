class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :oluprofile_users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.string :first_name,       :null => false
      t.string :last_name,        :null => false
      t.string :description
      t.string :phone_number
      t.string :location
      t.timestamps                :null => false
    end

    add_index :oluprofile_users, :email, unique: true
  end
end