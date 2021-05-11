puts "Destroying all Instances"
User.destroy_all
Content.destroy_all
List.destroy_all

jason = User.create(id:1, name:"jason",password:"abc123",email:"jason@gmail.com")
erwin = User.create(id: 2, name:"erwin",password:"abc123",email:"erwin@gmail.com")
daniel = User.create(id: 3, name:"daniel",password:"abc123",email:"daniel@gmail.com")

[1,2,3,4,5].each do |num|
  res = RestClient.get("https://api.themoviedb.org/3/discover/movie?page=#{num}&api_key=#{ENV['MOVIE_API']}")

  res_body = res.body
  movies = JSON.parse(res_body)["results"]
  genres = ["Action", "Romance", "Comedy"]
  
  movies.each do |movie|
    Content.create(
        title: movie["title"], 
        #   type: "Movie",
        #   vote_average: movie["vote_average"], 
        likes: movie["vote_count"],
        overview: movie["overview"], 
        poster_img: "https://image.tmdb.org/t/p/w500/#{movie['poster_path']}", 
      favorited: false,
      dislikes: 0,
      release_year: movie["release_date"].split("-")[0].to_i,
      genre: genres.sample
      )
    #   byebug
  end 
  puts Content.last

end 
List.create(user_id: 1, content_id: 2, genre: "My List")
# puts "Creating Lists "
# 200.times do 
#   List.create(user_id: User.all.sample.id, content_id: Content.all.sample.id)
# end 
# GET TV its /tv/{tv_id}