class RenameDiscipline < ActiveRecord::Migration
  def self.up
    rename_column :book_of_classes, :discipline, :discipline_id
  end

end
