#Modified Classes with minimal codes
class Book
	'''def initialize aTitle,aName
		@title=aTitle
		@name=aName
	   end
	'''
	def title= atitle
		@title=atitle
	end
	def name= aName
		@name=aName
	end
	def title
		@title
	end
	def name
		@name
	end
end
b1=Book.new
b1.title="Wings Of Fire"
b1.name="Dr.A.P.J. Abdul Kalam"
puts b1.title
puts b1.name
