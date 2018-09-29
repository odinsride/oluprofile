class CreateOluprofileSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :oluprofile_skills do |t|
      t.string :name
      t.integer :first_used
      t.integer :last_used
      t.integer :proficiency
      t.boolean :active
      t.integer :order
      t.integer :user_id,  foreign_key: true
      t.timestamps
    end

    add_index :oluprofile_skills, :name, unique: true
    add_index :oluprofile_skills, :user_id

  end
end
