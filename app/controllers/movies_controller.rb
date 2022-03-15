require "open-uri"
require "json"

class MoviesController < ApplicationController
  def index
    @movie = scrap
  end

  def show
    @movies = Movie.find(params[:id])
  end

  private

  ## Scraping

  def scrap
    url = "https://api.themoviedb.org/3/movie/550?api_key=444db8b8fcf0f7b3af4b52ce1dfd38b8"
    movie_serialized = URI.open(url).read
    movie = JSON.parse(movie_serialized)
  end
end
