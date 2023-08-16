require_relative 'models/book'
require_relative 'models/user'
require_relative 'services/storage'

# Sample Data
Storage.add_book(Book.new("Dune", "Frank Herbert", "Sci-Fi", "A sci-fi epic."))
Storage.add_book(Book.new("The Hobbit", "J.R.R. Tolkien", "Fantasy", "A fantasy classic."))

# CLI Loop
loop do
    puts "1. Add User"
    puts "2. Add Favorite Genre"
    puts "3. Add Read Book"
    puts "4. Get Recommendations"
    puts "5. Exit"
    choice = gets.chomp
  
    case choice
    when "1"
      puts "Enter User Name:"
      name = gets.chomp
      Storage.add_user(User.new(name))
    when "2"
      puts "Enter User Name:"
      name = gets.chomp
      user = Storage.find_user(name)
      
      if user
        puts "Enter Favorite Genre:"
        genre = gets.chomp
        user.favorite_genres << genre
      else
        puts "User not found!"
      end
  
    when "3"
      puts "Enter User Name:"
      name = gets.chomp
      user = Storage.find_user(name)
      
      if user
        puts "Enter Book Name:"
        book_name = gets.chomp
        user.read_books << book_name
      else
        puts "User not found!"
      end
  
    when "4"
      puts "Enter User Name:"
      name = gets.chomp
      user = Storage.find_user(name)
      
      if user
        recommended_books = Storage.recommend_books_for_user(user)
        puts "Recommended Books for #{name}:"
        recommended_books.each { |book| puts book.title }
      else
        puts "User not found!"
      end
  
    when "5"
      break
    else
      puts "Invalid choice!"
    end
  end
