class Movie < ApplicationRecord
  has_many :favorites
  has_many :movie_categories
end
