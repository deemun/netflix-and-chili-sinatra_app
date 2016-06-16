class AddRegistrations < ActiveRecord::Migration
  def change
  	create_table :registrations do |t|
     t.references :users
			t.references :events
			t.timestamps null: false
    end 
  end
end
