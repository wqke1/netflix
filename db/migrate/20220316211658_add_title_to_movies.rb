class AddTitleToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :title, :string
  end
end
