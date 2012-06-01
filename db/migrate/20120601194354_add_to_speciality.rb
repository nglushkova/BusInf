class AddToSpeciality < ActiveRecord::Migration
  def self.up
    add_column :specialities, :spec_description2, :string
    add_column :specialities, :spec_exams, :string
  end

  def self.down
    remove_column :specialities, :spec_description2
    remove_column :specialities, :spec_exams
  end
end
