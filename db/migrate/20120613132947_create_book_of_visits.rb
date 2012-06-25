class CreateBookOfVisits < ActiveRecord::Migration
  def self.up
    create_table :book_of_visits do |t|
      t.integer :student_id
      t.boolean :bov_presence
      t.date :bov_date
      t.integer :disciplines_id

      t.timestamps
    end
  end

  def self.down
    BusInf_table :book_of_visits
  end
end
