class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.integer :speciality_id
      t.integer :gr_course
      t.string :gr_cipher
      t.integer :gr_quantity

      t.timestamps
    end
  end

  def self.down
    BusInf_table :groups
  end
end