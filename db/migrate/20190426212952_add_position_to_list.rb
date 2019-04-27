class AddPositionToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :positon, :integer
  end
end
