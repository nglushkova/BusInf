class Rename < ActiveRecord::Migration
  def up
    rename_column :disciplines, :specialty_id, :speciality_id
  end

  def down
  end
end
