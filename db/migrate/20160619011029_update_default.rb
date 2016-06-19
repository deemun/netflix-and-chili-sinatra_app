class UpdateDefault < ActiveRecord::Migration
  def change
    change_column_default :events, :image_file, ""
  end
end
