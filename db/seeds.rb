Category.destroy_all
Film.destroy_all
Performer.destroy_all
Image.destroy_all
User.destroy_all
Review.destroy_all
Vote.destroy_all

penny = User.create!(username: "penelope", password_digest: "boom", age: 24)
antonio = User.create!(username: "andy", password_digest: "boom", age: 95)

comedy = Category.create!(title: "Comedy", description: "funny things")

bridesmaids = comedy.films.create!(name: "Bridesmaids", description: "bridesmaids movie", year: 2011, length: 120, rating: "R")
bridesmaids.reviews.create!(title: "wooo", content: "yupp", author: penny)
bridesmaids.images.create!(url: "https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg", name: "Background")
bridesmaids.votes.create!(value: 5, voter: penny)

kristen = bridesmaids.performers.create!(name: "Kristen Wig", biography: "she's funny", height: "6'0", birthday: Date.today)
kristen.reviews.create!(title: "review", content: "great", author: antonio)
kristen.images.create!(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL9k4sQZ4ymvxo9eUdLmJYdTOWlRmIPP0ZsDNVvmJ7Eh_cmi-Dlt5J6aM",name: "Profile")
kristen.votes.create!(value: 5, voter: penny)

review = penny.reviews.create!(title: "my movie review", content: "it was soooo great", author: antonio)
review.votes.create!(value: 2, voter: penny)
penny.images.create!(url: "https://i.ytimg.com/vi/tntOCGkgt98/maxresdefault.jpg", name: "Profile")

