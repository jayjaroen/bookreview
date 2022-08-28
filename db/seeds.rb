# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
books = Book.create([
  {
    name: "Sapiens",
    author: "Yuval Noah Harari",
    image_url: "https://books.google.com.hk/books/content?id=FILmrQEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73QCpEg9uG7tmuw-001KbuD3gonJO79I2YRn10gokEvp9oTE5ZlLVSSFNHXdjCV8heIvbf1AOal2nKum_2ze_VWNFwuiD3QED2W4v1A25_CiJA1lUVTZbiAoYQPL-5iJCRRqY2o"
  },

  {
    name: "Give and Take",
    author: "Adam Grant",
    image_url:"https://www.amazon.com/Give-Take-Helping-Others-Success/dp/0143124986"
  },

  {
    name: "Quiet",
    author: "Susan Cain",
    image_url: "https://www.amazon.com/-/zh_TW/Susan-Cain/dp/0307352153"
  },

  {
    name: "Grit",
    author: "Angela Duckworth",
    image_url: "https://www.amazon.com/Grit-Passion-Perseverance-Angela-Duckworth/dp/1501111108"
  },

  {
    name: "Educated",
    author: "Tara Westover",
    image_url: "https://www.amazon.com/Educated-Memoir-Tara-Westover/dp/0399590501"
  }
])

reviews = Review.create([

  {
    title: "One of the best read ever!",
    score: 5,
    book: Book.first
  },

  {
    title: "Understand the past to better prepare for the future",
    score: 4.5,
    book: Book.first
  }
])
