class CreateMaterials < ActiveRecord::Migration
  def self.up
    create_table :materials do |t|
      t.has_attached_file :mfile
      t.string :file_name
      t.string :file_type
      t.string :file_number

      t.timestamps
    end
  end

  def self.down
    BusInf_table :materials
  end
end