class AddIdsToMaterial < ActiveRecord::Migration
  def up
    add_column :materials, :discipline_id, :integer
    add_column :materials, :theme_id, :integer
    add_column :materials, :module_of_discipline_id, :integer
  end

  def down
    remove_column :materials, :discipline_id
    remove_column :materials, :theme_id
    remove_column :materials, :module_of_discipline_id
  end
end
