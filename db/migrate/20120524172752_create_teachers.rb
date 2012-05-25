class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.string :teach_name
      t.string :teach_surname
      t.string :teach_secondname
      t.string :teach_rank
      t.string :teach_description
      t.has_attached_file :teach_img

      t.timestamps
    end
  end

  def self.down
    BusInf_table :teachers
  end
end
