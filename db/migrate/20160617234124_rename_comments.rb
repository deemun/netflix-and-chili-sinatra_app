class RenameComments < ActiveRecord::Migration
  def change
  	rename_column :comments, :users_id, :user_id
  	rename_column :comments, :events_id, :event_id
  end
end

