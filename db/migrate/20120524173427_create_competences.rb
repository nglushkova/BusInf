class CreateCompetences < ActiveRecord::Migration
  def self.up
    create_table :competences do |t|
      t.string :comp_name
      t.string :comp_group
      t.string :comp_subgroup

      t.timestamps
    end
  end

  def self.down
    BusInf_table :competences
  end
end