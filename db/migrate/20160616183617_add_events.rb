class AddEvents < ActiveRecord::Migration
  def change
  	 create_table :events do |t|
  	 	t.references :users
      t.string :address, null: false
      t.integer :capacity, null: false
      t.string :title, null: false
      t.string :description, null: false
      t.integer :price, null: false
      t.datetime :event_date, null: false
      t.timestamps null: false
    end
  end
end
