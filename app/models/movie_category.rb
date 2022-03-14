class MovieCategory < ApplicationRecord
  belongs_to :categories
  belongs_to :movies
end
