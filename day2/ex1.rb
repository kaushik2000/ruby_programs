#Creating and Listing Book
class Books
	def initialize(aTitle,aName)
		@name=aName
		@title=aTitle
	end
	def set_title(aTitle)
		@title=aTitle
	end
	def set_author(aName)
		@name=aName
	end
	def get_author
		@name
	end
	def get_title
		@title
	end
end

b1=Books.new("A","A")
b1.set_title("Wings Of Fire")
b1.set_author("A.P.J")
puts b1.get_title
puts b1.get_author
b2=Books.new("Fire","Kaushik")
puts b2.get_title
puts b2.get_author

