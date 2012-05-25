class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :ev_author
      t.string :ev_text
      t.date :ev_date
      t.integer :cell_sked_id
      t.integer :group_id
      t.integer :ev_recipient

      t.timestamps
    end
  end

  def self.down
    BusInf_table :events
  end
end