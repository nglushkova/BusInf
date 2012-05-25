class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_name
      t.string :user_surname
      t.string :user_secondname
      t.string :user_email
      t.string :user_icq
      t.string :encripted_password
      t.string :salt
      t.integer :group_id
      t.string :user_status
      t.date :user_birthday
      t.string :user_phone
      t.has_attached_file :user_avatar

      t.timestamps
    end
  end

  def self.down
    BusInf_table :users
  end
end