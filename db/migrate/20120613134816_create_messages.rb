class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :mes_recipient
      t.string :mes_theme
      t.string :mes_text
      t.has_attached_file :mes_file

      t.timestamps
    end
  end

  def self.down
    BusInf_table :messages
  end
end
