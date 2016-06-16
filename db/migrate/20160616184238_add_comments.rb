class AddComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
     t.references :users, null: false
			t.references :events, null: false
			t.string :message, null: false
			t.timestamps null: false
		end 
  end
end
