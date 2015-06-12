class AddImageAndCapacityToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :image_file, :string
    add_column :movies, :capacity, :integer, default: 1
  end
end
