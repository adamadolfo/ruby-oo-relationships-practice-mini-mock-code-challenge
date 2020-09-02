require 'pry'
require_relative './book'
require_relative './author'

jk = Author.new("jk")
george_rr = Author.new("george")
harry1 = jk.write_book("harry potter", 35000)
got = george_rr.write_book("oiaf", 30000)


# binding.pry
# puts "author knows its books"
# puts jk.books == [harry1]



p Author.most_words == jk
# puts "book knows its word count"
# p book1.word_count == 35000
# puts "book knows it's author"
# puts book1.author == "jk"




# binding.pry


