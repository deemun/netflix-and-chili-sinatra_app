class AddUsers < ActiveRecord::Migration
  def change 
  	  create_table :users do |t|
      t.string :email, null: false
      t.string :password_hash, null: false
      t.boolean :approver, null: false, default: false
      t.timestamps null: false
    end
  end
end
