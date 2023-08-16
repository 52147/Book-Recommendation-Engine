class Storage
    @@books = []
    @@users = []
  
    def self.add_book(book)
      @@books << book
    end
  
    def self.add_user(user)
      @@users << user
    end
  
    def self.find_user(name)
      @@users.find { |user| user.name == name }
    end
  
    def self.recommend_books_for_user(user)
      recommended_books = []
      user.favorite_genres.each do |genre|
        recommended_books.concat(@@books.select { |book| book.genre == genre && !user.read_books.include?(book.title) })
      end
      recommended_books
    end
  end
# storage.rb
class Storage
    @@books = []
    @@users = []
  
    def self.add_book(book)
      @@books << book
    end
  
    def self.add_user(user)
      @@users << user
    end
  
    def self.find_user(name)
      @@users.find { |user| user.name == name }
    end
  
    def self.recommend_books_for_user(user)
      recommended_books = []
      user.favorite_genres.each do |genre|
        recommended_books.concat(@@books.select { |book| book.genre == genre && !user.read_books.include?(book.title) })
      end
      recommended_books
    end
  end
    