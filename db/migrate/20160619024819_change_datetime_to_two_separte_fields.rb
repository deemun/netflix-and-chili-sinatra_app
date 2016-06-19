class ChangeDatetimeToTwoSeparteFields < ActiveRecord::Migration
  def change
    change_column :events, :event_date, :string
  end
end
