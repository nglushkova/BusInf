class AddTypeToCouple < ActiveRecord::Migration
  def self.up
    add_column :couples, :couple_type, :string
  end

  def self.down
    remove_column :couples, :couple_type
  end
end