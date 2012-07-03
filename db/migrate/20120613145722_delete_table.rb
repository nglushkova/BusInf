class DeleteTable < ActiveRecord::Migration
  def self.up
    drop_table :book_of_classes
  end
end
