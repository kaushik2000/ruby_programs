#Classes with attribute reader and writer
class Book
	attr_reader :title,:author
	attr_writer :title,:author
end
b1=Book.new
b1.title="Wings Of Fire"
b1.author="Dr.A.P.J.Abdul Kalam"
puts b1.title
puts b1.author
