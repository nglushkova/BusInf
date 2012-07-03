class CreateCommentaries < ActiveRecord::Migration
  def self.up
    create_table :commentaries do |t|
      t.integer :user_id
      t.string :com_text
      t.has_attached_file :com_file
      t.string :cfile_type
      t.integer :cfile_object

      t.timestamps
    end
  end

  def self.down
    BusInf_table :commentaries
  end
end
