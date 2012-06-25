class AddTypeToBov < ActiveRecord::Migration
  def self.up
    rename_column :book_of_visits, :disciplines_id, :discipline_id
    add_column :book_of_visits, :bov_type, :string
  end

  def self.down
    remove_column :book_of_visits, :bov_type
  end
end
