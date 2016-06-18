class AddCuisineGenre < ActiveRecord::Migration
  def change
  	add_column :events, :movie_genre, :string
  	add_column :events, :cuisine, :string
  end
end
