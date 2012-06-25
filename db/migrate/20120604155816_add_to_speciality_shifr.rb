class AddToSpecialityShifr < ActiveRecord::Migration
  def up
    add_column :specialities, :spec_shifr, :string
  end

  def down
    remove_column :specialities, :spec_shifr
  end
end
