class AddNewColumStartTime < ActiveRecord::Migration
  def change
    add_column :events, :start_time, :string
  end
end
