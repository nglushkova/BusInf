class RenameInUser < ActiveRecord::Migration
  def self.up
    rename_column :users, :encripted_password, :encrypted_password
  end

  def self.down
  end
end
