class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :stud_surname
      t.string :stud_name
      t.string :stud_secondname
      t.integer :group_id
      t.boolean :stud_captain

      t.timestamps
    end
  end

  def self.down
    BusInf_table :students
  end
end