#Using attribute accessor for creating setter and getter methods
class Book
	#attr_reader :title,:author
	#attr_writer :title,:author
	attr_accessor :title, :author #Creates both setter and getter methods in a single command
	def initialize aTitle,aAuthor
		@author=aAuthor
		@title=aTitle
	end
	def display
		puts @title,@author
	end
end

b1=Book.new "Book1","Author1"
puts b1.title,b1.author
b2=Book.new "Book2","Author2"
puts b2.title,b2.author

