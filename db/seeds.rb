# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'open-uri'

puts "Attention ça va commencer"

%w[01 02 03 04 05 06 07 08 09 10 11 12 13 50 51 52 53 54 55 58 59 60 61 62 63 64 65 67 68 70 71 72 73 74 75 76 77 78 79
  80 81 82 83 84 85 86 87 88 90 91 92 93 94 95 96 97 98 99].to_a.each do |num|
  url = "https://api.themoviedb.org/3/movie/5#{num}?api_key=444db8b8fcf0f7b3af4b52ce1dfd38b8"
  p url
  movie_serialized = URI.open(url).read
  movie = JSON.parse(movie_serialized)
  poster_url = movie['poster_path']
  Movie.create.rand(6)(
    description: movie['overview'],
    rating: movie['vote_average'],
    image: "https://image.tmdb.org/t/p/original/#{poster_url}",
    release_year: movie['release_date'].to_date,
    title: movie['original_title']
  )
end

puts "gg mgl"
