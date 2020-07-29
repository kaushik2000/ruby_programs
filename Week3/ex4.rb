#Over-writing to_s method of object class
class Book
	#attr_reader :title,:author
	#attr_writer :title,:author
	attr_accessor :title,:author#Creates both setter and getter methods in a single command
	def initialize aTitle=nil,aAuthor=nil
		@title=aTitle
		@author=aAuthor
	end
	def display
		puts @title,@author
	end

	def to_s #Overrriding to_s built in method from object class
		puts "Book names is #{@title} and author is #{@author}"
	end
end


b1=Book.new "Book1","Author1"
puts b1.methods #Displays all the methods defined in the class as well as built in methods'

puts b1 #Used to display the string version of the object address {to_s method- From object class} (calls both sub-class and super class methods)

puts b1.to_s #Calls only the over-ridden method
