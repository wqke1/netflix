class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :author
      t.float :rating
      t.date :release_year
      t.string :description

      t.timestamps
    end
  end
end
