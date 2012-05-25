class CreateThemes < ActiveRecord::Migration
  def self.up
    create_table :themes do |t|
      t.integer :module_of_discipline_id
      t.integer :discipline_id
      t.string :theme_name
      t.integer :theme_inmodule
      t.integer :theme_indiscipline
      t.string :theme_type
      t.integer :theme_numberofhour
      t.string :theme_technologytraining

      t.timestamps
    end
  end

  def self.down
    BusInf_table :themes
  end
end