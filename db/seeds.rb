# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Movie.destroy_all

puts 'Creating movies...'
titanic = { title: 'Titanic', overview: 'Rose, who is being forced to marry a wealthy man, falls in love with Jack, a talented artist, aboard the unsinkable Titanic. Unfortunately, the ship hits an iceberg, endangering their lives.', poster_url: 'https://static.euronews.com/articles/stories/07/31/01/20/606x758_cmsv2_dfdbec3d-af7a-5e75-9ae7-2ec0188cbf9a-7310120.jpg', rating: 4.0 }
the_holiday = { title: 'The Holiday', overview: 'Two girls from different countries swap homes for the holidays to get away from their relationship issues. However, their lives change unexpectedly when they meet and fall in love with two local guys.', poster_url: 'https://m.media-amazon.com/images/I/71Bww7QhsEL._AC_UF894,1000_QL80_.jpg', rating: 4.8 }
pulp_fiction = { title: 'Pulp Fiction', overview: "In the realm of underworld, a series of incidents intertwines the lives of two Los Angeles mobsters, a gangster's wife, a boxer and two small-time criminals.", poster_url: 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', rating: 4.5 }
wedding_crashers = { title: 'Wedding Crashers', overview: 'John and Jeremy, friends and womanisers, go to weddings to seek out women to have flings with. They enjoy this experience till Jeremy finds out that John has fallen in love with Claire.', poster_url: 'https://m.media-amazon.com/images/M/MV5BZmJkNzViYjYtZWZlNy00OGE4LWI2MzUtYTcwNjY3Y2MyODIwXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_FMjpg_UX1000_.jpg', rating: 5.0 }
norbit = { title: 'Norbit', overview: 'A meek Norbit rediscovers his love for a childhood sweetheart. However, his domineering wife is determined not to let him go till she wrests control of a restaurant from his foster father.', poster_url: 'https://m.media-amazon.com/images/I/51FPVA03bqL._AC_UF1000,1000_QL80_.jpg', rating: 5.0 }

[titanic, the_holiday, pulp_fiction, wedding_crashers, norbit].each do |attributes|
  movie = Movie.create!(attributes)
  puts "Created #{movie.title}"
end
puts 'Finished!'
