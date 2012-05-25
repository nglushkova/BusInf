class CreateInterimAttestations < ActiveRecord::Migration
  def self.up
    create_table :interim_attestations do |t|
      t.integer :ia_semester
      t.integer :discipline_id
      t.string :ia_formoftraining
      t.string :ia_checkpoint

      t.timestamps
    end
  end

  def self.down
    BusInf_table :interim_attestations
  end
end