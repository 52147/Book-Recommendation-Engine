class Book
    attr_accessor :title, :author, :genre, :summary
  
    def initialize(title, author, genre, summary)
      @title = title
      @author = author
      @genre = genre
      @summary = summary
    end
  end
  