class CreateCouples < ActiveRecord::Migration
  def self.up
    create_table :couples do |t|
      t.integer :couple_week
      t.integer :couple_dayweek
      t.integer :cell_sked_id
      t.integer :group_id
      t.integer :discipline_id
      t.string :couple_cabinet
      t.string :couple_teacher
      t.string :couple_comment

      t.timestamps
    end
  end

  def self.down
    BusInf_table :couples
    end
end
