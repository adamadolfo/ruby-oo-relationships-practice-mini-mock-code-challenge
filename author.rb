class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        #goes through Book checks if book belongs to this (self) author
        Book.all.select {|inst_book| inst_book.author == self}
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words
        total = 0
        self.books.select {|inst_book| total += inst_book.word_count}
        total
    end

    def self.most_words
        ##look through books
        ##look at books word counts
        ##compare the word counts with other authors
        
        winnerbook = Book.all.max do 
            |inst_book1, inst_book2| inst_book1.word_count <=> inst_book2.word_count
        end
        winnerbook.author

    end









end

