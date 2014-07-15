class AddPositionToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :position, :integer
  end
end
