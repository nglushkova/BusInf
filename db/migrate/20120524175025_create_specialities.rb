class CreateSpecialities < ActiveRecord::Migration
  def self.up
    create_table :specialities do |t|
      t.string :spec_name
      t.string :spec_redaction
      t.string :spec_description

      t.timestamps
    end
  end

  def self.down
    BusInf_table :specialities
  end
end