class AddImgFileToEvent < ActiveRecord::Migration
  def change
    add_column :events, :image_file, :string
  end
end
