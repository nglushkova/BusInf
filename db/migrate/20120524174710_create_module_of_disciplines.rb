class CreateModuleOfDisciplines < ActiveRecord::Migration
  def self.up
    create_table :module_of_disciplines do |t|
      t.integer :mod_number
      t.integer :discipline_id
      t.string :mod_name
      t.integer :mod_numberofhours

      t.timestamps
    end
  end

  def self.down
    BusInf_table :module_of_disciplines
  end
end