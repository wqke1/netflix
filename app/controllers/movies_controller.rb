class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @movies_rpa = Movie.all.sample(6)
    @movies_letop10 = Movie.all.sample(6)
    @movies_tendances = Movie.all.sample(6)
    @movies_new = Movie.all.sample(6)
    @movies_chill = Movie.all.sample(6)
    @movies_populaire = Movie.all.sample(6)
    @movies_hollywood = Movie.all.sample(6)
    @movies_comedies = Movie.all.sample(6)
    @movies_anime = Movie.all.sample(6)
    @movies_sports = Movie.all.sample(6)
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
