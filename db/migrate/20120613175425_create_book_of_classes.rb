class CreateBookOfClasses < ActiveRecord::Migration
  def self.up
    create_table :book_of_classes do |t|
      t.integer :user_id
      t.integer :discipline
      t.integer :group_id
      t.date :boc_date
      t.string :boc_type
      t.integer :boc_quantityhours

      t.timestamps
    end
  end

  def self.down
    BusInf_table :book_of_classes
  end
end