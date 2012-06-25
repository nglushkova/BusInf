class CreateReschedulings < ActiveRecord::Migration
  def self.up
    create_table :reschedulings do |t|
      t.date :res_date
      t.integer :res_week
      t.integer :res_dayofweek

      t.timestamps
    end
  end

  def self.down
    BusInf_table :reschedulings
  end
end
