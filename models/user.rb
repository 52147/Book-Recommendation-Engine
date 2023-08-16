class User
    attr_accessor :name, :favorite_genres, :read_books
  
    def initialize(name)
      @name = name
      @favorite_genres = []
      @read_books = []
    end
  end