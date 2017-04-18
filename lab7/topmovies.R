str(topmovies)

starwars <- topmovies[substr(topmovies$name, start=0, stop=9)=="Star Wars", "name"]
starwars
