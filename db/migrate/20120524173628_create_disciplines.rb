class CreateDisciplines < ActiveRecord::Migration
  def self.up
    create_table :disciplines do |t|
      t.integer :specialty_id
      t.string :disc_name
      t.string :disc_cycle
      t.string :disc_partofcycle
      t.integer :disc_semester
      t.integer :disc_course
      t.string :disc_formoftraining
      t.string :disc_objective
      t.string :disc_tasks

      t.timestamps
    end
  end

  def self.down
    BusInf_table :disciplines
  end
end
