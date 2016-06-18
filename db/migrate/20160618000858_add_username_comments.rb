class AddUsernameComments < ActiveRecord::Migration
  def change
  	add_column :comments, :username, :string
  end
end
