Book.create!([
  {title: "Yes Please", author_first_name: "Amy", author_last_name: "Poehler", page_count: 329, rating: 5, genre: "Autobiography"},
  {title: "Bossypants", author_first_name: "Tina", author_last_name: "Fey", page_count: 277, rating: 5, genre: "Autobiography"},
  {title: "The Martian", author_first_name: "Andy", author_last_name: "Weir", page_count: 369, rating: 5, genre: "Science Fiction"},
  {title: "A Light in the Attic", author_first_name: "Shel", author_last_name: "Silverstein", page_count: 176, rating: 5, genre: "Poetry"},
  {title: "Harry Potter", author_first_name: "JK", author_last_name: "Rowling", page_count: nil, rating: nil, genre: ""},
  {title: "1984", author_first_name: "George", author_last_name: "Orwell", page_count: nil, rating: nil, genre: ""},
  {title: "The Catcher in the Rye", author_first_name: "JD", author_last_name: "Salinger", page_count: nil, rating: nil, genre: ""},
  {title: "Eloquent Ruby", author_first_name: "Russ", author_last_name: "Olsen", page_count: nil, rating: nil, genre: ""}
])
User.create!([
  {email: "test@gmail.com", api_key: "ABC123"}
])
