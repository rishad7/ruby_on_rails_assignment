tv_series = Tv.create([{ name: "Suits" }, { name: "The Office" }])
tv_series_list = Tvseries.create([
    { tv_id: 1, genre: "Legal Drama", no_of_seosons: 9, date_of_first_release: "23rd June 2011", director: "Kevin Bray", actor: "Meghan", shoot_location: "New York", country: "US"},
    { tv_id: 1, genre: "Legal Drama", no_of_seosons: 9, date_of_first_release: "23rd June 2011", director: "Kevin Bray", actor: "Garbriel Macht", shoot_location: "New York", country: "US"},
    { tv_id: 1, genre: "Legal Drama", no_of_seosons: 9, date_of_first_release: "23rd June 2011", director: "Kevin Bray", actor: "Patrick Adams", shoot_location: "New York", country: "US"},
    { tv_id: 1, genre: "Legal Drama", no_of_seosons: 9, date_of_first_release: "23rd June 2011", director: "Kevin Bray", actor: "Gina Torres", shoot_location: "Illinois", country: "US"},
    { tv_id: 1, genre: "Legal Drama", no_of_seosons: 9, date_of_first_release: "23rd June 2011", director: "Kevin Bray", actor: "Amanda Schull", shoot_location: "Illinois", country: "US"},
    { tv_id: 1, genre: "Legal Drama", no_of_seosons: 9, date_of_first_release: "23rd June 2011", director: "Kevin Bray", actor: "Sarah Rafferty", shoot_location: "New York", country: "US"},
    { tv_id: 2, genre: "Office humor", no_of_seosons: 8, date_of_first_release: "24th March 2005", director: "Greg Daniels", actor: "Jenna Fischer", shoot_location: "BedfordShire", country: "UK"},
    { tv_id: 2, genre: "Office humor", no_of_seosons: 8, date_of_first_release: "24th March 2005", director: "Greg Daniels", actor: "John Krasinski", shoot_location: "BedfordShire", country: "UK"},
    { tv_id: 2, genre: "Office humor", no_of_seosons: 8, date_of_first_release: "24th March 2005", director: "Greg Daniels", actor: "Angela Kinsey", shoot_location: "BedfordShire", country: "UK"},
    { tv_id: 2, genre: "Office humor", no_of_seosons: 8, date_of_first_release: "24th March 2005", director: "Greg Daniels", actor: "Greg Daniels", shoot_location: "BedfordShire", country: "UK"},
])
reviews = Review.create([
    { tv_id: 1, user: "Sam Pedro", stars: 4, review: "Really good!"},
    { tv_id: 1, user: "Peter Troll", stars: 3, review: "Ok ok"},
    { tv_id: 1, user: "Chris Bla", stars: 5, review: "The best ever!"},
    { tv_id: 1, user: "Suzan Something", stars: 1, review: "Worst ever"},
    { tv_id: 1, user: "Axel Ontheway", stars: 5, review: "Really really good"},
    { tv_id: 2, user: "Mack Boe", stars: 4, review: "Ok ok"},
    { tv_id: 2, user: "Peter Troll", stars: 2, review: "The best ever!"},
    { tv_id: 2, user: "Rik van der Kroon", stars: 3, review: "Really goood!"},
    { tv_id: 2, user: "Sam Pedro", stars: 2, review: "Empty"},
])