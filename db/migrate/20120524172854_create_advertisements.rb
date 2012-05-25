class CreateAdvertisements < ActiveRecord::Migration
  def self.up
    create_table :advertisements do |t|
      t.date :ad_date
      t.integer :ad_author
      t.string :ad_text
      t.integer :group_id
      t.integer :ad_recipient

      t.timestamps
    end
  end

  def self.down
    BusInf_table :advertisements
  end
end
