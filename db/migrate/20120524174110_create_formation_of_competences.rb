class CreateFormationOfCompetences < ActiveRecord::Migration
  def self.up
    create_table :formation_of_competences do |t|
      t.integer :discipline_id
      t.integer :competence_id
      t.boolean :foc_type
      t.string :foc_knowledge
      t.string :foc_ability
      t.string :foc_skills

      t.

      t.timestamps
    end
  end

  def self.down
    BusInf_table :formation_of_competences
  end
end